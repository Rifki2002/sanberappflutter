import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  ArmorTitan armorTitan = ArmorTitan();
  AttackTitan attackTitan = AttackTitan();
  BeastTitan beastTitan = BeastTitan();
  Human human = Human();
  armorTitan.powerPoint = 7;
  attackTitan.powerPoint = 8;
  beastTitan.powerPoint = 10;
  human.powerPoint = 1;

  print("Armor Titan PowerPoint: ${armorTitan.powerPoint}");
  print("Armor Titan Action: ${armorTitan.terjang()}");

  print("Attack Titan PowerPoint: ${attackTitan.powerPoint}");
  print("Attack Titan Action: ${attackTitan.punch()}");

  print("Beast Titan PowerPoint: ${beastTitan.powerPoint}");
  print("Beast Titan Action: ${beastTitan.lempar()}");

  print("Human PowerPoint: ${human.powerPoint}");
  print("Human Action: ${human.killAlltitan()}");
}
