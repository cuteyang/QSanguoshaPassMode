#include "customassigndialog.h"

#include <QPushButton>
#include <QMessageBox>
#include <QRadioButton>
#include <QPixmap>
#include <QIcon>
#include <QGroupBox>

CustomAssignDialog::CustomAssignDialog(QWidget *parent)
    :QDialog(parent),
      choose_general2(false), free_choose_general(false), free_choose_general2(false)
{
    setWindowTitle(tr("Custom mini scene"));

    list = new QListWidget;
    list->setFlow(QListView::TopToBottom);
    list->setMovement(QListView::Static);

    QVBoxLayout *vlayout = new QVBoxLayout;

    num_combobox = new QComboBox;
    starter_box = new QComboBox;

    for(int i = 0; i <= 8; i++){
        num_combobox->addItem(tr("%1 persons").arg(QString::number(i+2)), i+2);

        QString player = (i == 0 ? "player" : "ai");
        QString text = i == 0 ?
                    QString("%1[%2]").arg(Sanguosha->translate(player)).arg(Sanguosha->translate("unknown"))
                    : QString("%1%2[%3]")
                    .arg(Sanguosha->translate(player))
                    .arg(QString::number(i))
                    .arg(Sanguosha->translate("unknown"));
        if(i != 0)
            player.append(QString::number(i));
        player_mapping[i] = player;
        role_mapping[player] = "unknown";

        QListWidgetItem *item = new QListWidgetItem(text);
        item->setData(Qt::UserRole, player);
        item_map[i] = item;
        player_maxhp[player] = 4;
        player_hp[player] = 4;
    }

    role_combobox = new QComboBox;
    role_combobox->addItem(tr("Lord"), "lord");
    role_combobox->addItem(tr("Loyalist"), "loyalist");
    role_combobox->addItem(tr("Renegade"), "renegade");
    role_combobox->addItem(tr("Rebel"), "rebel");

    for(int i=0; i< num_combobox->currentIndex()+2; i++){
        list->addItem(item_map[i]);
        QString name = player_mapping[i];
        starter_box->addItem(tr("%1").arg(name), name);
    }
    list->setCurrentItem(item_map[0]);

    QGroupBox *starter_group = new QGroupBox(tr("Starter"));
    QVBoxLayout *starter_lay = new QVBoxLayout();
    starter_group->setLayout(starter_lay);
    starter_lay->addWidget(starter_box);

    general_label = new LabelButton;
    general_label->setPixmap(QPixmap("image/system/disabled.png"));
    general_label->setFixedSize(42, 36);
    QGroupBox *general_box = new QGroupBox(tr("General"));
    QVBoxLayout *general_lay = new QVBoxLayout();
    general_box->setLayout(general_lay);
    general_lay->addWidget(general_label);

    general_label2 = new LabelButton;
    general_label2->setPixmap(QPixmap("image/system/disabled.png"));
    general_label2->setFixedSize(42, 36);
    QGroupBox *general_box2 = new QGroupBox(tr("General2"));
    QVBoxLayout *general_lay2 = new QVBoxLayout();
    general_box2->setLayout(general_lay2);
    general_lay2->addWidget(general_label2);


    QPushButton *equipAssign = new QPushButton(tr("EquipAssign"));
    QPushButton *handcardAssign = new QPushButton(tr("HandcardAssign"));
    QPushButton *judgeAssign = new QPushButton(tr("JudgeAssign"));
    QPushButton *pileAssign = new QPushButton(tr("PileCardAssign"));

    max_hp_prompt = new QCheckBox(tr("Max Hp"));
    max_hp_prompt->setChecked(true);
    max_hp_spin = new QSpinBox();
    max_hp_spin->setRange(2,10);
    max_hp_spin->setValue(4);
    max_hp_spin->setEnabled(true);

    hp_prompt = new QCheckBox(tr("Hp"));
    hp_prompt->setChecked(true);
    hp_spin = new QSpinBox();
    hp_spin->setRange(1,max_hp_spin->value());
    hp_spin->setValue(4);
    hp_spin->setEnabled(true);

    self_select_general = new QCheckBox(tr("General Self Select"));
    self_select_general2 = new QCheckBox(tr("General2 Self Select"));

    set_turned = new QCheckBox(tr("Player Turned"));
    set_chained = new QCheckBox(tr("Player Chained"));

    QPushButton *okButton = new QPushButton(tr("OK"));
    QPushButton *cancelButton = new QPushButton(tr("Cancel"));

    vlayout->addWidget(role_combobox);
    vlayout->addWidget(num_combobox);
    QHBoxLayout *label_lay = new QHBoxLayout;
    label_lay->addWidget(general_box);
    label_lay->addWidget(general_box2);
    vlayout->addLayout(label_lay);
    vlayout->addWidget(self_select_general);
    vlayout->addWidget(self_select_general2);
    vlayout->addLayout(HLay(max_hp_prompt,max_hp_spin));
    vlayout->addLayout(HLay(hp_prompt,hp_spin));
    vlayout->addWidget(set_turned);
    vlayout->addWidget(set_chained);
    vlayout->addWidget(starter_group);
    vlayout->addStretch();
    vlayout->addWidget(okButton);
    vlayout->addWidget(cancelButton);

    equip_list = new QListWidget;
    hand_list = new QListWidget;
    judge_list = new QListWidget;
    pile_list = new QListWidget;
    QVBoxLayout *info_lay = new QVBoxLayout(), *equip_lay = new QVBoxLayout(), *hand_lay = new QVBoxLayout()
            , *judge_lay = new QVBoxLayout(), *pile_lay = new QVBoxLayout();
    info_lay->addWidget(list);
    QGroupBox *equip_group = new QGroupBox(tr("Equips"));
    QGroupBox *hands_group = new QGroupBox(tr("Handcards"));
    QGroupBox *judge_group = new QGroupBox(tr("Judges"));
    QGroupBox *pile_group = new QGroupBox(tr("DrawPile"));
    equip_group->setLayout(equip_lay);
    hands_group->setLayout(hand_lay);
    judge_group->setLayout(judge_lay);
    pile_group->setLayout(pile_lay);

    removeEquipButton = new QPushButton(tr("Remove Equip"));
    removeHandButton = new QPushButton(tr("Remove Handcard"));
    removeJudgeButton = new QPushButton(tr("Remove Judge"));
    removePileButton = new QPushButton(tr("Remove Pilecard"));

    removeEquipButton->setEnabled(false);
    removeHandButton->setEnabled(false);
    removeJudgeButton->setEnabled(false);
    removePileButton->setEnabled(false);
    equip_lay->addWidget(equip_list);
    equip_lay->addLayout(HLay(equipAssign, removeEquipButton));
    hand_lay->addWidget(hand_list);
    hand_lay->addLayout(HLay(handcardAssign, removeHandButton));
    info_lay->addLayout(HLay(equip_group, hands_group));
    judge_lay->addWidget(judge_list);
    judge_lay->addLayout(HLay(judgeAssign, removeJudgeButton));
    pile_lay->addWidget(pile_list);
    pile_lay->addLayout(HLay(pileAssign, removePileButton));
    info_lay->addLayout(HLay(judge_group, pile_group));

    QHBoxLayout *layout = new QHBoxLayout();
    layout->addLayout(info_lay);
    layout->addLayout(vlayout);
    QVBoxLayout *mainlayout = new QVBoxLayout();
    mainlayout->addLayout(layout);
    setLayout(mainlayout);

    connect(role_combobox, SIGNAL(currentIndexChanged(int)), this, SLOT(updateRole(int)));
    connect(list, SIGNAL(currentItemChanged(QListWidgetItem*,QListWidgetItem*)),
            this, SLOT(on_list_itemSelectionChanged(QListWidgetItem*)));
    connect(num_combobox, SIGNAL(currentIndexChanged(int)), this, SLOT(updateNumber(int)));
    connect(general_label, SIGNAL(clicked()), this, SLOT(doGeneralAssign()));
    connect(general_label2, SIGNAL(clicked()), this, SLOT(doGeneralAssign2()));
    connect(max_hp_prompt,SIGNAL(toggled(bool)),max_hp_spin,SLOT(setEnabled(bool)));
    connect(hp_prompt,SIGNAL(toggled(bool)),hp_spin,SLOT(setEnabled(bool)));
    connect(hp_prompt,SIGNAL(toggled(bool)), this, SLOT(setPlayerHpEnabled(bool)));
    connect(max_hp_prompt,SIGNAL(toggled(bool)), this, SLOT(setPlayerMaxHpEnabled(bool)));
    connect(self_select_general, SIGNAL(toggled(bool)), this, SLOT(freeChoose(bool)));
    connect(self_select_general2, SIGNAL(toggled(bool)), this, SLOT(freeChoose2(bool)));
    connect(self_select_general, SIGNAL(toggled(bool)), general_label, SLOT(setDisabled(bool)));
    connect(self_select_general2, SIGNAL(toggled(bool)), general_label2, SLOT(setDisabled(bool)));
    connect(set_turned, SIGNAL(toggled(bool)), this, SLOT(doPlayerTurns(bool)));
    connect(set_chained, SIGNAL(toggled(bool)), this, SLOT(doPlayerChains(bool)));
    connect(hp_spin, SIGNAL(valueChanged(int)), this, SLOT(getPlayerHp(int)));
    connect(max_hp_spin, SIGNAL(valueChanged(int)), this, SLOT(getPlayerMaxHp(int)));
    connect(removeEquipButton, SIGNAL(clicked()), this, SLOT(removeEquipCard()));
    connect(removeHandButton, SIGNAL(clicked()), this, SLOT(removeHandCard()));
    connect(removeJudgeButton, SIGNAL(clicked()), this, SLOT(removeJudgeCard()));
    connect(removePileButton, SIGNAL(clicked()), this, SLOT(removePileCard()));
    connect(equipAssign, SIGNAL(clicked()), this, SLOT(doEquipCardAssign()));
    connect(handcardAssign, SIGNAL(clicked()), this, SLOT(doHandCardAssign()));
    connect(judgeAssign, SIGNAL(clicked()), this, SLOT(doJudgeCardAssign()));
    connect(pileAssign, SIGNAL(clicked()), this, SLOT(doPileCardAssign()));
    //   connect(okButton, SIGNAL(clicked()), this, SLOT(accept()));
    connect(cancelButton, SIGNAL(clicked()), this, SLOT(reject()));
}

void CustomAssignDialog::doEquipCardAssign(){
    CardAssignDialog *dialog = new CardAssignDialog(this, "equip");

    connect(dialog, SIGNAL(accepted()), this, SLOT(accept()));
    connect(dialog, SIGNAL(card_chosen(int)), this, SLOT(getEquipCard(int)));
    dialog->exec();
}

void CustomAssignDialog::getEquipCard(int card_id){
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    QString card_type = Sanguosha->getCard(card_id)->getSubtype();
    foreach(int id, player_equips[name]){
        if(card_type == Sanguosha->getCard(id)->getSubtype()){
            player_equips[name].removeOne(id);
            break;
        }
    }

    player_equips[name] << card_id;
    updatePlayerInfo(name);
    equip_list->setCurrentRow(0);
    removeEquipButton->setEnabled(true);
}

void CustomAssignDialog::doHandCardAssign(){
    CardAssignDialog *dialog = new CardAssignDialog(this);

    connect(dialog, SIGNAL(accepted()), this, SLOT(accept()));
    connect(dialog, SIGNAL(card_chosen(int)), this, SLOT(getHandCard(int)));
    dialog->exec();
}

void CustomAssignDialog::getHandCard(int card_id){
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    if(player_handcards[name].contains(card_id))
        return;

    player_handcards[name] << card_id;
    updatePlayerInfo(name);
    hand_list->setCurrentRow(0);
    removeHandButton->setEnabled(true);
}

void CustomAssignDialog::doJudgeCardAssign(){
    CardAssignDialog *dialog = new CardAssignDialog(this, "", "DelayedTrick");

    connect(dialog, SIGNAL(accepted()), this, SLOT(accept()));
    connect(dialog, SIGNAL(card_chosen(int)), this, SLOT(getJudgeCard(int)));
    dialog->exec();
}

void CustomAssignDialog::getJudgeCard(int card_id){
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    QString card_name = Sanguosha->getCard(card_id)->objectName();
    foreach(int id, player_judges[name]){
        if(Sanguosha->getCard(id)->objectName() == card_name){
            player_judges[name].removeOne(id);
            break;
        }
    }

    player_judges[name] << card_id;
    updatePlayerInfo(name);
    judge_list->setCurrentRow(0);
    removeJudgeButton->setEnabled(true);
}

void CustomAssignDialog::doPileCardAssign(){
    CardAssignDialog *dialog = new CardAssignDialog(this);

    connect(dialog, SIGNAL(accepted()), this, SLOT(accept()));
    connect(dialog, SIGNAL(card_chosen(int)), this, SLOT(getPileCard(int)));
    dialog->exec();
}

void CustomAssignDialog::getPileCard(int card_id){
    if(set_pile.contains(card_id))
        return;

    set_pile << card_id;
    updatePileInfo();
    pile_list->setCurrentRow(0);
    removePileButton->setEnabled(true);
}

void CustomAssignDialog::updateNumber(int num){
    int count = num_combobox->itemData(num).toInt();
    if(count < list->count()){
        for(int i = list->count() - 1; i >= count; i--){
            list->takeItem(i);
            starter_box->removeItem(i);
        }
    }
    else{
        for(int i= list->count(); i< count; i++){
            list->addItem(item_map[i]);
            QString name = player_mapping[i];
            starter_box->addItem(tr("%1").arg(name), name);
        }
    }
}

void CustomAssignDialog::updatePlayerInfo(QString name)
{
    equip_list->clear();
    hand_list->clear();
    judge_list->clear();

    if(player_equips[name].isEmpty())
        removeEquipButton->setEnabled(false);
    else
        removeEquipButton->setEnabled(true);
    if(player_handcards[name].isEmpty())
        removeHandButton->setEnabled(false);
    else
        removeHandButton->setEnabled(true);
    if(player_judges[name].isEmpty())
        removeJudgeButton->setEnabled(false);
    else
        removeJudgeButton->setEnabled(true);

    foreach(int equip_id, player_equips[name]){
        const Card* card = Sanguosha->getCard(equip_id);
        QString card_name = Sanguosha->translate(card->objectName());
        QIcon suit_icon = QIcon(QString("image/system/suit/%1.png").arg(card->getSuitString()));
        QString point = card->getNumberString();

        QString card_info = point + "  " + card_name + "\t\t" + Sanguosha->translate(card->getSubtype());
        QListWidgetItem *name_item = new QListWidgetItem(card_info, equip_list);
        name_item->setIcon(suit_icon);
        name_item->setData(Qt::UserRole, card->getId());
    }

    foreach(int hand_id, player_handcards[name]){
        const Card* card = Sanguosha->getCard(hand_id);
        QString card_name = Sanguosha->translate(card->objectName());
        QIcon suit_icon = QIcon(QString("image/system/suit/%1.png").arg(card->getSuitString()));
        QString point = card->getNumberString();

        QString card_info = point + "  " + card_name + "\t\t" + Sanguosha->translate(card->getSubtype());
        QListWidgetItem *name_item = new QListWidgetItem(card_info, hand_list);
        name_item->setIcon(suit_icon);
        name_item->setData(Qt::UserRole, card->getId());
    }

    foreach(int judge_id, player_judges[name]){
        const Card* card = Sanguosha->getCard(judge_id);
        QString card_name = Sanguosha->translate(card->objectName());
        QIcon suit_icon = QIcon(QString("image/system/suit/%1.png").arg(card->getSuitString()));
        QString point = card->getNumberString();

        QString card_info = point + "  " + card_name + "\t\t" + Sanguosha->translate(card->getSubtype());
        QListWidgetItem *name_item = new QListWidgetItem(card_info, judge_list);
        name_item->setIcon(suit_icon);
        name_item->setData(Qt::UserRole, card->getId());
    }

    equip_list->setCurrentRow(0);
    hand_list->setCurrentRow(0);
    judge_list->setCurrentRow(0);
}

void CustomAssignDialog::updatePileInfo(){
    pile_list->clear();

    if(set_pile.isEmpty())
        removePileButton->setEnabled(false);

    foreach(int card_id, set_pile){
        const Card* card = Sanguosha->getCard(card_id);
        QString card_name = Sanguosha->translate(card->objectName());
        QIcon suit_icon = QIcon(QString("image/system/suit/%1.png").arg(card->getSuitString()));
        QString point = card->getNumberString();

        QString card_info = point + "  " + card_name + "\t\t" + Sanguosha->translate(card->getSubtype());
        QListWidgetItem *name_item = new QListWidgetItem(card_info, pile_list);
        name_item->setIcon(suit_icon);
        name_item->setData(Qt::UserRole, card->getId());
    }

    pile_list->setCurrentRow(0);
}

void CustomAssignDialog::updatePlayerHpInfo(QString name){
    if(player_hp.value(name, 0) != 0){
        hp_spin->setValue(player_hp[name]);
        hp_prompt->setChecked(true);
    }
    else{
        hp_spin->setValue(4);
        hp_prompt->setChecked(false);
    }

    if(player_maxhp.value(name, 0) != 0){
        max_hp_spin->setValue(player_maxhp[name]);
        max_hp_prompt->setChecked(true);
    }
    else{
        max_hp_spin->setValue(4);
        max_hp_prompt->setChecked(false);
    }
}

void CustomAssignDialog::getPlayerHp(int hp)
{
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    player_hp[name] = hp;
}

void CustomAssignDialog::getPlayerMaxHp(int maxhp){
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    player_maxhp[name] = maxhp;
}

void CustomAssignDialog::setPlayerHpEnabled(bool toggled){
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    if(!toggled){
        player_hp.remove(name);
    }
    else{
        player_hp[name] = hp_spin->value();
    }
}

void CustomAssignDialog::setPlayerMaxHpEnabled(bool toggled){
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    if(!toggled){
        player_maxhp.remove(name);
    }
    else{
        player_maxhp[name] = max_hp_spin->value();
    }
}

void CustomAssignDialog::updateRole(int index){
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    QString role = role_combobox->itemData(index).toString();
    QString text = QString("%1[%2]").arg(name).arg(Sanguosha->translate(role));
    list->currentItem()->setText(text);
    role_mapping[name] = role;
}

void CustomAssignDialog::removeEquipCard(){
    int card_id = equip_list->currentItem()->data(Qt::UserRole).toInt();
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    if(player_equips[name].contains(card_id)){
        player_equips[name].removeOne(card_id);
        equip_list->takeItem(equip_list->currentRow());
        if(equip_list->count() > 0)
            equip_list->setCurrentRow(0);
        else
            removeEquipButton->setEnabled(false);
    }
}

void CustomAssignDialog::removeHandCard(){
    int card_id = hand_list->currentItem()->data(Qt::UserRole).toInt();
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    if(player_handcards[name].contains(card_id)){
        player_handcards[name].removeOne(card_id);
        hand_list->takeItem(hand_list->currentRow());
        if(hand_list->count() > 0)
            hand_list->setCurrentRow(0);
        else
            removeHandButton->setEnabled(false);
    }
}

void CustomAssignDialog::removeJudgeCard(){
    int card_id = judge_list->currentItem()->data(Qt::UserRole).toInt();
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    if(player_judges[name].contains(card_id)){
        player_judges[name].removeOne(card_id);
        judge_list->takeItem(judge_list->currentRow());
        if(judge_list->count() > 0)
            judge_list->setCurrentRow(0);
        else
            removeJudgeButton->setEnabled(false);
    }
}

void CustomAssignDialog::removePileCard(){
    int card_id = pile_list->currentItem()->data(Qt::UserRole).toInt();
    if(set_pile.contains(card_id)){
        set_pile.removeOne(card_id);
        pile_list->takeItem(pile_list->currentRow());
        if(pile_list->count() > 0)
            pile_list->setCurrentRow(0);
        else
            removePileButton->setEnabled(false);
    }
}

void CustomAssignDialog::doGeneralAssign(){
    choose_general2 = false;
    GeneralAssignDialog *dialog = new GeneralAssignDialog(this);

    connect(dialog, SIGNAL(accepted()), this, SLOT(accept()));
    connect(dialog, SIGNAL(general_chosen(QString)), this, SLOT(getChosenGeneral(QString)));
    dialog->exec();
}

void CustomAssignDialog::doGeneralAssign2(){
    choose_general2 = true;
    GeneralAssignDialog *dialog = new GeneralAssignDialog(this, true);

    connect(dialog, SIGNAL(accepted()), this, SLOT(accept()));
    connect(dialog, SIGNAL(general_chosen(QString)), this, SLOT(getChosenGeneral(QString)));
    connect(dialog, SIGNAL(general_cleared()), this, SLOT(clearGeneral2()));
    dialog->exec();
}

void CustomAssignDialog::reject(){
    QDialog::reject();
}

void CustomAssignDialog::clearGeneral2(){
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    general2_mapping[name].clear();

    general_label2->setPixmap(QPixmap("image/system/disabled.png"));
}

void CustomAssignDialog::getChosenGeneral(QString name){
    if(choose_general2){
        const General *general2 = Sanguosha->getGeneral(name);
        general_label2->setPixmap(QPixmap(general2->getPixmapPath("tiny")));
        if(list->currentItem())
            general2_mapping[list->currentItem()->data(Qt::UserRole).toString()] = name;
    }
    else{
        const General *general = Sanguosha->getGeneral(name);
        general_label->setPixmap(QPixmap(general->getPixmapPath("tiny")));
        if(list->currentItem())
            general_mapping[list->currentItem()->data(Qt::UserRole).toString()] = name;
    }
}

void CustomAssignDialog::freeChoose(bool toggled){
    if(list->currentItem()->data(Qt::UserRole).toString() != "player")
        return;

    if(toggled)
        free_choose_general = true;
    else
        free_choose_general = false;
}

void CustomAssignDialog::freeChoose2(bool toggled){
    if(list->currentItem()->data(Qt::UserRole).toString() != "player")
        return;

    if(toggled)
        free_choose_general2 = true;
    else
        free_choose_general2 = false;
}

void CustomAssignDialog::doPlayerChains(bool toggled){
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    player_chained[name] = toggled;
}

void CustomAssignDialog::doPlayerTurns(bool toggled){
    QString name = list->currentItem()->data(Qt::UserRole).toString();
    player_turned[name] = toggled;
}

void CustomAssignDialog::on_list_itemSelectionChanged(QListWidgetItem *current){
    QString player_name = current->data(Qt::UserRole).toString();
    if(!general_mapping.value(player_name, "").isEmpty()){
        general_label->setPixmap(QPixmap
                                 (QString(Sanguosha->getGeneral(general_mapping.value(player_name))->getPixmapPath("tiny"))));
    }
    else
        general_label->setPixmap(QPixmap(QString("image/system/disabled.png")));


    if(!general2_mapping.value(player_name, "").isEmpty())
        general_label2->setPixmap(QPixmap
                                  (QString(Sanguosha->getGeneral(general2_mapping.value(player_name))->getPixmapPath("tiny"))));
    else
        general_label2->setPixmap(QPixmap(QString("image/system/disabled.png")));

    if(!role_mapping[player_name].isEmpty() &&
            role_mapping[player_name] != role_combobox->itemData(role_combobox->currentIndex()).toString()){
        for(int i = 0; i < role_combobox->count(); i++){
            if(role_mapping[player_name] == role_combobox->itemData(i).toString()){
                role_combobox->setCurrentIndex(i);
                break;
            }
        }
    }

    if(!player_name.contains("player")){
        self_select_general->setEnabled(false);
        self_select_general2->setEnabled(false);
        self_select_general->setChecked(false);
        self_select_general2->setChecked(false);
    }
    else{
        self_select_general->setEnabled(true);
        self_select_general2->setEnabled(true);
        self_select_general->setChecked(free_choose_general);
        self_select_general2->setChecked(free_choose_general2);
    }

    set_turned->setChecked(player_turned.value(player_name, false));
    set_chained->setChecked(player_chained.value(player_name, false));

    updatePlayerInfo(player_name);
    updatePlayerHpInfo(player_name);
}

//extern CustomAssignDialog *CustomInstance;

//---------------------------------------

GeneralAssignDialog::GeneralAssignDialog(QWidget *parent, bool can_ban)
    :QDialog(parent)
{
    setWindowTitle(tr("Mini choose generals"));

    QTabWidget *tab_widget = new QTabWidget;

    group = new QButtonGroup(this);
    group->setExclusive(true);

    QList<const General *> all_generals = Sanguosha->findChildren<const General *>();
    QMap<QString, QList<const General*> > map;
    foreach(const General *general, all_generals){
        map[general->getKingdom()] << general;
    }

    QStringList kingdoms = Sanguosha->getKingdoms();

    foreach(QString kingdom, kingdoms){
        QList<const General *> generals = map[kingdom];

        if(!generals.isEmpty()){
            QWidget *tab = createTab(generals);
            tab_widget->addTab(tab,
                               QIcon(QString("image/kingdom/icon/%1.png").arg(kingdom)),
                               Sanguosha->translate(kingdom));
        }
    }

    QPushButton *ok_button = new QPushButton(tr("OK"));
    connect(ok_button, SIGNAL(clicked()), this, SLOT(chooseGeneral()));

    QPushButton *cancel_button = new QPushButton(tr("Cancel"));
    connect(cancel_button, SIGNAL(clicked()), this, SLOT(reject()));

    QHBoxLayout *button_layout = new QHBoxLayout;
    if(can_ban){
        QPushButton *clear_button = new QPushButton(tr("Clear General"));
        connect(clear_button, SIGNAL(clicked()), this, SLOT(clearGeneral()));

        button_layout->addWidget(clear_button);
    }

    button_layout->addStretch();
    button_layout->addWidget(ok_button);
    button_layout->addWidget(cancel_button);

    QVBoxLayout *layout = new QVBoxLayout;
    layout->addWidget(tab_widget);
    layout->addLayout(button_layout);

    setLayout(layout);

    group->buttons().first()->click();
}

QWidget *GeneralAssignDialog::createTab(const QList<const General *> &generals){
    QWidget *tab = new QWidget;

    QGridLayout *layout = new QGridLayout;
    layout->setOriginCorner(Qt::TopLeftCorner);
    QIcon lord_icon("image/system/roles/lord.png");

    const int columns = 4;

    for(int i=0; i<generals.length(); i++){
        const General *general = generals.at(i);
        QString general_name = general->objectName();
        if(general->isTotallyHidden())
            continue;

        QString text = QString("%1[%2]")
                       .arg(Sanguosha->translate(general_name))
                       .arg(Sanguosha->translate(general->getPackage()));

        QAbstractButton *button;
        button = new QRadioButton(text);
        button->setObjectName(general_name);
        button->setToolTip(general->getSkillDescription());
        if(general->isLord())
            button->setIcon(lord_icon);

        group->addButton(button);

        int row = i / columns;
        int column = i % columns;
        layout->addWidget(button, row, column);
    }

    tab->setLayout(layout);
    return tab;
}

void GeneralAssignDialog::chooseGeneral(){
    QAbstractButton *button = group->checkedButton();
    if(button){
        emit general_chosen(button->objectName());
    }
    this->reject();
}

void GeneralAssignDialog::clearGeneral(){
    emit general_cleared();
    this->reject();
}

//------------------------------

CardAssignDialog::CardAssignDialog(QWidget *parent, QString card_type, QString class_name) :
    QDialog(parent)
{

    setWindowTitle(tr("Custom Card Chosen"));
    QVBoxLayout *vlayout = new QVBoxLayout;
    card_list = new QListWidget;

    int i, n = Sanguosha->getCardCount();
    QList<const Card *> reasonable_cards;
    if(!card_type.isEmpty() || !class_name.isEmpty()){
        for(i=0; i<n ;i++){
            const Card *card = Sanguosha->getCard(i);
            if(card->getType() == card_type || card->inherits(class_name.toStdString().c_str()))
                reasonable_cards << card;
        }
    }
    else{
        for(i=0; i<n ;i++){
            const Card *card = Sanguosha->getCard(i);
            reasonable_cards << card;
        }
    }

    for(i = 0; i < reasonable_cards.length(); i++)
        addCard(reasonable_cards.at(i));

    if(n>0)
        card_list->setCurrentRow(0);

    QPushButton *getCardButton = new QPushButton(tr("Get card"));
    QPushButton *back = new QPushButton(tr("Back"));

    vlayout->addWidget(getCardButton);
    vlayout->addWidget(back);

    QHBoxLayout *layout = new QHBoxLayout();
    layout->addWidget(card_list);
    layout->addLayout(vlayout);
    QVBoxLayout *mainlayout = new QVBoxLayout();
    mainlayout->addLayout(layout);
    setLayout(mainlayout);

    connect(back, SIGNAL(clicked()), this, SLOT(reject()));
    connect(getCardButton, SIGNAL(clicked()), this, SLOT(askCard()));
}

void CardAssignDialog::addCard(const Card *card){
    QString name = Sanguosha->translate(card->objectName());
    QIcon suit_icon = QIcon(QString("image/system/suit/%1.png").arg(card->getSuitString()));
    QString point = card->getNumberString();

    QString card_info = point + "  " + name + "\t\t" + Sanguosha->translate(card->getSubtype());
    QListWidgetItem *name_item = new QListWidgetItem(card_info, card_list);
    name_item->setIcon(suit_icon);
    name_item->setData(Qt::UserRole, card->getId());
}

void CardAssignDialog::askCard(){
    QListWidgetItem *card_item = card_list->currentItem();
    int card_id = card_item->data(Qt::UserRole).toInt();
    emit card_chosen(card_id);
}
