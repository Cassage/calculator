<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ea165352-3568-4572-a555-ac43958236a8(jetbrains.mps.tutorial.calculator.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="8b058853-5d4d-4867-b733-0be50c3342c0" name="jetbrains.mps.tutorial.calculator" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports />
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="8b058853-5d4d-4867-b733-0be50c3342c0" name="jetbrains.mps.tutorial.calculator">
      <concept id="1896792429832301910" name="jetbrains.mps.tutorial.calculator.structure.Calculator" flags="ng" index="1aBMZW">
        <child id="743850410581505075" name="outputField" index="3EVSgM" />
        <child id="743850410581492941" name="inputField" index="3EVVjc" />
      </concept>
      <concept id="743850410581914275" name="jetbrains.mps.tutorial.calculator.structure.InputFieldReference" flags="ng" index="3E$say">
        <reference id="743850410581914276" name="field" index="3E$sa_" />
      </concept>
      <concept id="743850410581505064" name="jetbrains.mps.tutorial.calculator.structure.OutputField" flags="ng" index="3EVSgD">
        <child id="743850410581893886" name="expression" index="3E$pbZ" />
      </concept>
      <concept id="743850410581492926" name="jetbrains.mps.tutorial.calculator.structure.InputField" flags="ng" index="3EVViZ" />
    </language>
  </registry>
  <node concept="1aBMZW" id="DiG07wJgiX">
    <property role="TrG5h" value="MyCalc" />
    <node concept="3EVViZ" id="DiG07wJjg_" role="3EVVjc">
      <property role="TrG5h" value="width" />
    </node>
    <node concept="3EVViZ" id="DiG07wJjgA" role="3EVVjc">
      <property role="TrG5h" value="height" />
    </node>
    <node concept="3EVViZ" id="DiG07wJjgB" role="3EVVjc">
      <property role="TrG5h" value="depth" />
    </node>
    <node concept="3EVSgD" id="DiG07wJoaa" role="3EVSgM">
      <node concept="3cpWs3" id="DiG07wKRaa" role="3E$pbZ">
        <node concept="3cmrfG" id="DiG07wKRad" role="3uHU7w">
          <property role="3cmrfH" value="5" />
        </node>
        <node concept="3cpWs3" id="DiG07wKPH3" role="3uHU7B">
          <node concept="3E$say" id="DiG07wXK0r" role="3uHU7B">
            <ref role="3E$sa_" node="DiG07wJjg_" resolve="width" />
          </node>
          <node concept="3cmrfG" id="DiG07wKPH6" role="3uHU7w">
            <property role="3cmrfH" value="3" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1aBMZW" id="DiG07wXfXz">
    <property role="TrG5h" value="MySalary" />
    <node concept="3EVViZ" id="DiG07wXfX$" role="3EVVjc">
      <property role="TrG5h" value="Java Hours" />
    </node>
    <node concept="3EVViZ" id="DiG07wXfX_" role="3EVVjc">
      <property role="TrG5h" value="PHP Hours" />
    </node>
    <node concept="3EVSgD" id="DiG07wXfXC" role="3EVSgM">
      <node concept="3cpWs3" id="DiG07wXgXp" role="3E$pbZ">
        <node concept="17qRlL" id="DiG07wXh8i" role="3uHU7w">
          <node concept="3cmrfG" id="DiG07wXh8l" role="3uHU7w">
            <property role="3cmrfH" value="3" />
          </node>
          <node concept="3E$say" id="DiG07wXh87" role="3uHU7B">
            <ref role="3E$sa_" node="DiG07wXfX_" resolve="PHP Hours" />
          </node>
        </node>
        <node concept="17qRlL" id="DiG07wXfXL" role="3uHU7B">
          <node concept="3E$say" id="DiG07wXfXE" role="3uHU7B">
            <ref role="3E$sa_" node="DiG07wXfX$" resolve="Java Hours" />
          </node>
          <node concept="3cmrfG" id="DiG07wXfXQ" role="3uHU7w">
            <property role="3cmrfH" value="10" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1aBMZW" id="DiG07wXmYk">
    <property role="TrG5h" value="MySalary2" />
  </node>
</model>

