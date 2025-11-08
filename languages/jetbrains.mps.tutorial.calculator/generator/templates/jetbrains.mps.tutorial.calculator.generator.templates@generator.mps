<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7bae0f0e-5dc1-40c1-9ede-117e5a4d0ef6(jetbrains.mps.tutorial.calculator.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="gsia" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.event(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" />
    <import index="zg65" ref="r:f0209c1b-bbf6-447e-9a0f-cd6872a76a90(jetbrains.mps.tutorial.calculator.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ngI" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ngI" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1087833466690" name="jetbrains.mps.lang.generator.structure.NodeMacro" flags="lg" index="17VmuZ">
        <reference id="1200912223215" name="mappingLabel" index="2rW$FS" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1131073187192" name="jetbrains.mps.lang.generator.structure.MapSrcNodeMacro" flags="ln" index="1pdMLZ" />
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1218047638031" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_CreateUniqueName" flags="nn" index="2piZGk">
        <child id="1218047638032" name="baseName" index="2piZGb" />
      </concept>
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="role_DebugInfo" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="1DiKEDgNuPh">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="DiG07wWITv" role="3acgRq">
      <ref role="30HIoZ" to="zg65:DiG07wKRaz" resolve="InputFieldReference" />
      <node concept="1Koe21" id="DiG07wWIW3" role="1lVwrX">
        <node concept="9aQIb" id="DiG07wWIYc" role="1Koe22">
          <node concept="3clFbS" id="DiG07wWIYd" role="9aQI4">
            <node concept="3cpWs8" id="DiG07wWIZw" role="3cqZAp">
              <node concept="3cpWsn" id="DiG07wWIZz" role="3cpWs9">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="DiG07wWIZv" role="1tU5fm" />
              </node>
            </node>
            <node concept="3clFbF" id="DiG07wWJ60" role="3cqZAp">
              <node concept="37vLTI" id="DiG07wWK8n" role="3clFbG">
                <node concept="3cpWs3" id="DiG07wWKcn" role="37vLTx">
                  <node concept="37vLTw" id="DiG07wWKcq" role="3uHU7w">
                    <ref role="3cqZAo" node="DiG07wWIZz" resolve="i" />
                    <node concept="raruj" id="DiG07wWKGj" role="lGtFl" />
                    <node concept="1ZhdrF" id="DiG07wWKHV" role="lGtFl">
                      <property role="2qtEX8" value="variableDeclaration" />
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <node concept="3$xsQk" id="DiG07wWKHW" role="3$ytzL">
                        <node concept="3clFbS" id="DiG07wWKHX" role="2VODD2">
                          <node concept="3clFbF" id="DiG07wWKVi" role="3cqZAp">
                            <node concept="2OqwBi" id="DiG07wWLap" role="3clFbG">
                              <node concept="1iwH7S" id="DiG07wWKVh" role="2Oq$k0" />
                              <node concept="1iwH70" id="DiG07wWLos" role="2OqNvi">
                                <ref role="1iwH77" node="DiG07wSPiJ" resolve="LocalVar" />
                                <node concept="2OqwBi" id="DiG07wWLQJ" role="1iwH7V">
                                  <node concept="30H73N" id="DiG07wWL_I" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="DiG07wWM58" role="2OqNvi">
                                    <ref role="3Tt5mk" to="zg65:DiG07wKRa$" resolve="field" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="DiG07wWK8y" role="3uHU7B">
                    <ref role="3cqZAo" node="DiG07wWIZz" resolve="i" />
                  </node>
                </node>
                <node concept="37vLTw" id="DiG07wWJ5Y" role="37vLTJ">
                  <ref role="3cqZAo" node="DiG07wWIZz" resolve="i" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3lhOvk" id="DiG07wKRbP" role="3lj3bC">
      <ref role="30HIoZ" to="zg65:1DiKEDgNuPm" resolve="Calculator" />
      <ref role="3lhOvi" node="DiG07wKRaN" resolve="CalculatorImpl" />
    </node>
    <node concept="2rT7sh" id="DiG07wQ8RA" role="2rTMjI">
      <property role="TrG5h" value="InputFieldDeclaration" />
      <ref role="2rTdP9" to="zg65:DiG07wJgiY" resolve="InputField" />
      <ref role="2rZz_L" to="tpee:fz12cDC" resolve="FieldDeclaration" />
    </node>
    <node concept="2rT7sh" id="DiG07wRPOA" role="2rTMjI">
      <property role="TrG5h" value="OutputFieldDeclaration" />
      <ref role="2rTdP9" to="zg65:DiG07wJjgC" resolve="OutputField" />
      <ref role="2rZz_L" to="tpee:fz12cDC" resolve="FieldDeclaration" />
    </node>
    <node concept="2rT7sh" id="DiG07wSPiJ" role="2rTMjI">
      <property role="TrG5h" value="LocalVar" />
      <ref role="2rTdP9" to="zg65:DiG07wJgiY" resolve="InputField" />
      <ref role="2rZz_L" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
    </node>
  </node>
  <node concept="312cEu" id="DiG07wKRaN">
    <property role="TrG5h" value="CalculatorImpl" />
    <node concept="3Tm1VV" id="DiG07wKRaO" role="1B3o_S" />
    <node concept="n94m4" id="DiG07wKRaP" role="lGtFl">
      <ref role="n9lRv" to="zg65:1DiKEDgNuPm" resolve="Calculator" />
    </node>
    <node concept="17Uvod" id="DiG07wL04k" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="DiG07wL04l" role="3zH0cK">
        <node concept="3clFbS" id="DiG07wL04m" role="2VODD2">
          <node concept="3clFbF" id="DiG07wL0b4" role="3cqZAp">
            <node concept="2OqwBi" id="DiG07wL0tb" role="3clFbG">
              <node concept="30H73N" id="DiG07wL0b3" role="2Oq$k0" />
              <node concept="3TrcHB" id="DiG07wL2hR" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="DiG07wLaaE" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JFrame" resolve="JFrame" />
    </node>
    <node concept="312cEg" id="DiG07wLOaA" role="jymVt">
      <property role="TrG5h" value="listener" />
      <node concept="3Tm6S6" id="DiG07wLMYr" role="1B3o_S" />
      <node concept="3uibUv" id="DiG07wLO7s" role="1tU5fm">
        <ref role="3uigEE" to="gsia:~DocumentListener" resolve="DocumentListener" />
      </node>
      <node concept="2ShNRf" id="DiG07wLQ3t" role="33vP2m">
        <node concept="YeOm9" id="DiG07wMh0J" role="2ShVmc">
          <node concept="1Y3b0j" id="DiG07wMh0M" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <property role="373rjd" value="true" />
            <ref role="1Y3XeK" to="gsia:~DocumentListener" resolve="DocumentListener" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="DiG07wMh0N" role="1B3o_S" />
            <node concept="3clFb_" id="DiG07wMh11" role="jymVt">
              <property role="TrG5h" value="insertUpdate" />
              <node concept="3Tm1VV" id="DiG07wMh12" role="1B3o_S" />
              <node concept="3cqZAl" id="DiG07wMh14" role="3clF45" />
              <node concept="37vLTG" id="DiG07wMh15" role="3clF46">
                <property role="TrG5h" value="p1" />
                <node concept="3uibUv" id="DiG07wMh16" role="1tU5fm">
                  <ref role="3uigEE" to="gsia:~DocumentEvent" resolve="DocumentEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="DiG07wMh17" role="3clF47">
                <node concept="3clFbF" id="DiG07wMlrQ" role="3cqZAp">
                  <node concept="1rXfSq" id="DiG07wMlrP" role="3clFbG">
                    <ref role="37wK5l" node="DiG07wM$4E" resolve="update" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="DiG07wMh19" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="DiG07wMh1a" role="jymVt" />
            <node concept="3clFb_" id="DiG07wMh1b" role="jymVt">
              <property role="TrG5h" value="removeUpdate" />
              <node concept="3Tm1VV" id="DiG07wMh1c" role="1B3o_S" />
              <node concept="3cqZAl" id="DiG07wMh1e" role="3clF45" />
              <node concept="37vLTG" id="DiG07wMh1f" role="3clF46">
                <property role="TrG5h" value="p1" />
                <node concept="3uibUv" id="DiG07wMh1g" role="1tU5fm">
                  <ref role="3uigEE" to="gsia:~DocumentEvent" resolve="DocumentEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="DiG07wMh1h" role="3clF47">
                <node concept="3clFbF" id="DiG07wMrXG" role="3cqZAp">
                  <node concept="1rXfSq" id="DiG07wMrXF" role="3clFbG">
                    <ref role="37wK5l" node="DiG07wM$4E" resolve="update" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="DiG07wMh1j" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="DiG07wMh1k" role="jymVt" />
            <node concept="3clFb_" id="DiG07wMh1l" role="jymVt">
              <property role="TrG5h" value="changedUpdate" />
              <node concept="3Tm1VV" id="DiG07wMh1m" role="1B3o_S" />
              <node concept="3cqZAl" id="DiG07wMh1o" role="3clF45" />
              <node concept="37vLTG" id="DiG07wMh1p" role="3clF46">
                <property role="TrG5h" value="p1" />
                <node concept="3uibUv" id="DiG07wMh1q" role="1tU5fm">
                  <ref role="3uigEE" to="gsia:~DocumentEvent" resolve="DocumentEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="DiG07wMh1r" role="3clF47">
                <node concept="3clFbF" id="DiG07wMwmG" role="3cqZAp">
                  <node concept="1rXfSq" id="DiG07wMwmF" role="3clFbG">
                    <ref role="37wK5l" node="DiG07wM$4E" resolve="update" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="DiG07wMh1t" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="DiG07wNYqK" role="jymVt" />
    <node concept="312cEg" id="DiG07wO4vD" role="jymVt">
      <property role="TrG5h" value="inputField" />
      <node concept="3Tm6S6" id="DiG07wO1l6" role="1B3o_S" />
      <node concept="3uibUv" id="DiG07wO4qd" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
      <node concept="2ShNRf" id="DiG07wO63Z" role="33vP2m">
        <node concept="1pGfFk" id="DiG07wO5uy" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
        </node>
      </node>
      <node concept="1WS0z7" id="DiG07wO6jP" role="lGtFl">
        <ref role="2rW$FS" node="DiG07wQ8RA" resolve="InputFieldDeclaration" />
        <node concept="3JmXsc" id="DiG07wO6jQ" role="3Jn$fo">
          <node concept="3clFbS" id="DiG07wO6jR" role="2VODD2">
            <node concept="3clFbF" id="DiG07wO9au" role="3cqZAp">
              <node concept="2OqwBi" id="DiG07wO9p8" role="3clFbG">
                <node concept="30H73N" id="DiG07wO9at" role="2Oq$k0" />
                <node concept="3Tsc0h" id="DiG07wO9GM" role="2OqNvi">
                  <ref role="3TtcxE" to="zg65:DiG07wJgjd" resolve="inputField" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="DiG07wOa6v" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="DiG07wOa6w" role="3zH0cK">
          <node concept="3clFbS" id="DiG07wOa6x" role="2VODD2">
            <node concept="3clFbF" id="DiG07wOl2r" role="3cqZAp">
              <node concept="2OqwBi" id="DiG07wOlR7" role="3clFbG">
                <node concept="1iwH7S" id="DiG07wOl2q" role="2Oq$k0" />
                <node concept="2piZGk" id="DiG07wOmn1" role="2OqNvi">
                  <node concept="Xl_RD" id="DiG07wOnN1" role="2piZGb">
                    <property role="Xl_RC" value="inputField" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="DiG07wOtN6" role="jymVt">
      <property role="TrG5h" value="outputField" />
      <node concept="3Tm6S6" id="DiG07wOpQ_" role="1B3o_S" />
      <node concept="3uibUv" id="DiG07wOtIt" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
      <node concept="2ShNRf" id="DiG07wOwHx" role="33vP2m">
        <node concept="1pGfFk" id="DiG07wOKjA" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
        </node>
      </node>
      <node concept="1WS0z7" id="DiG07wOKnR" role="lGtFl">
        <ref role="2rW$FS" node="DiG07wRPOA" resolve="OutputFieldDeclaration" />
        <node concept="3JmXsc" id="DiG07wOKnU" role="3Jn$fo">
          <node concept="3clFbS" id="DiG07wOKnV" role="2VODD2">
            <node concept="3clFbF" id="DiG07wOKo1" role="3cqZAp">
              <node concept="2OqwBi" id="DiG07wOKnW" role="3clFbG">
                <node concept="3Tsc0h" id="DiG07wOKnZ" role="2OqNvi">
                  <ref role="3TtcxE" to="zg65:DiG07wJjgN" resolve="outputField" />
                </node>
                <node concept="30H73N" id="DiG07wOKo0" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="DiG07wOKPk" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="DiG07wOKPl" role="3zH0cK">
          <node concept="3clFbS" id="DiG07wOKPm" role="2VODD2">
            <node concept="3clFbF" id="DiG07wP3d9" role="3cqZAp">
              <node concept="2OqwBi" id="DiG07wP42c" role="3clFbG">
                <node concept="1iwH7S" id="DiG07wP3d8" role="2Oq$k0" />
                <node concept="2piZGk" id="DiG07wP4qM" role="2OqNvi">
                  <node concept="Xl_RD" id="DiG07wP5Pi" role="2piZGb">
                    <property role="Xl_RC" value="outputField" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="DiG07wNZ_d" role="jymVt" />
    <node concept="3clFbW" id="DiG07wMETf" role="jymVt">
      <node concept="3cqZAl" id="DiG07wMETg" role="3clF45" />
      <node concept="3clFbS" id="DiG07wMETi" role="3clF47">
        <node concept="3clFbF" id="DiG07wMJKi" role="3cqZAp">
          <node concept="1rXfSq" id="DiG07wMJKh" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Frame.setTitle(java.lang.String)" resolve="setTitle" />
            <node concept="Xl_RD" id="DiG07wMKsf" role="37wK5m">
              <property role="Xl_RC" value="Calculator" />
              <node concept="17Uvod" id="DiG07wNR1x" role="lGtFl">
                <property role="2qtEX9" value="value" />
                <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                <node concept="3zFVjK" id="DiG07wNR1y" role="3zH0cK">
                  <node concept="3clFbS" id="DiG07wNR1z" role="2VODD2">
                    <node concept="3clFbF" id="DiG07wNXsK" role="3cqZAp">
                      <node concept="2OqwBi" id="DiG07wNXMS" role="3clFbG">
                        <node concept="30H73N" id="DiG07wNXsJ" role="2Oq$k0" />
                        <node concept="3TrcHB" id="DiG07wNYfN" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="DiG07wMPY0" role="3cqZAp">
          <node concept="1rXfSq" id="DiG07wMPXY" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JFrame.setLayout(java.awt.LayoutManager)" resolve="setLayout" />
            <node concept="2ShNRf" id="DiG07wMRLc" role="37wK5m">
              <node concept="1pGfFk" id="DiG07wN9XI" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="z60i:~GridLayout.&lt;init&gt;(int,int)" resolve="GridLayout" />
                <node concept="3cmrfG" id="DiG07wNbfq" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="3cmrfG" id="DiG07wNcHL" role="37wK5m">
                  <property role="3cmrfH" value="2" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="DiG07wPdRa" role="3cqZAp">
          <node concept="3clFbS" id="DiG07wPdRc" role="9aQI4">
            <node concept="3clFbF" id="DiG07wPfTg" role="3cqZAp">
              <node concept="2OqwBi" id="DiG07wPlCR" role="3clFbG">
                <node concept="2OqwBi" id="DiG07wPh_l" role="2Oq$k0">
                  <node concept="37vLTw" id="DiG07wPfTe" role="2Oq$k0">
                    <ref role="3cqZAo" node="DiG07wO4vD" resolve="inputField" />
                    <node concept="1ZhdrF" id="DiG07wQbwc" role="lGtFl">
                      <property role="2qtEX8" value="variableDeclaration" />
                      <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                      <node concept="3$xsQk" id="DiG07wQbwd" role="3$ytzL">
                        <node concept="3clFbS" id="DiG07wQbwe" role="2VODD2">
                          <node concept="3clFbF" id="DiG07wQp7y" role="3cqZAp">
                            <node concept="2OqwBi" id="DiG07wQqzk" role="3clFbG">
                              <node concept="1iwH7S" id="DiG07wQp7x" role="2Oq$k0" />
                              <node concept="1iwH70" id="DiG07wQsbg" role="2OqNvi">
                                <ref role="1iwH77" node="DiG07wQ8RA" resolve="InputFieldDeclaration" />
                                <node concept="30H73N" id="DiG07wQ_b$" role="1iwH7V" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="DiG07wPlbw" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getDocument()" resolve="getDocument" />
                  </node>
                </node>
                <node concept="liA8E" id="DiG07wPmzd" role="2OqNvi">
                  <ref role="37wK5l" to="r791:~Document.addDocumentListener(javax.swing.event.DocumentListener)" resolve="addDocumentListener" />
                  <node concept="37vLTw" id="DiG07wPrz4" role="37wK5m">
                    <ref role="3cqZAo" node="DiG07wLOaA" resolve="listener" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="DiG07wPuLF" role="3cqZAp">
              <node concept="1rXfSq" id="DiG07wPuLD" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="2ShNRf" id="DiG07wPx38" role="37wK5m">
                  <node concept="1pGfFk" id="DiG07wPF$$" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                    <node concept="Xl_RD" id="DiG07wPH40" role="37wK5m">
                      <property role="Xl_RC" value="Title" />
                      <node concept="17Uvod" id="DiG07wPZUt" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="DiG07wPZUu" role="3zH0cK">
                          <node concept="3clFbS" id="DiG07wPZUv" role="2VODD2">
                            <node concept="3clFbF" id="DiG07wQ3Cc" role="3cqZAp">
                              <node concept="2OqwBi" id="DiG07wQ4tI" role="3clFbG">
                                <node concept="30H73N" id="DiG07wQ3Cb" role="2Oq$k0" />
                                <node concept="3TrcHB" id="DiG07wQ7MK" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="DiG07wPLly" role="3cqZAp">
              <node concept="1rXfSq" id="DiG07wPLlw" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="DiG07wPRK$" role="37wK5m">
                  <ref role="3cqZAo" node="DiG07wO4vD" resolve="inputField" />
                  <node concept="1ZhdrF" id="DiG07wQB1D" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="DiG07wQB1E" role="3$ytzL">
                      <node concept="3clFbS" id="DiG07wQB1F" role="2VODD2">
                        <node concept="3clFbF" id="DiG07wQBJ7" role="3cqZAp">
                          <node concept="2OqwBi" id="DiG07wQBJ8" role="3clFbG">
                            <node concept="1iwH7S" id="DiG07wQBJ9" role="2Oq$k0" />
                            <node concept="1iwH70" id="DiG07wQBJa" role="2OqNvi">
                              <ref role="1iwH77" node="DiG07wQ8RA" resolve="InputFieldDeclaration" />
                              <node concept="30H73N" id="DiG07wQBJb" role="1iwH7V" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="DiG07wPT8D" role="lGtFl">
            <node concept="3JmXsc" id="DiG07wPT8E" role="3Jn$fo">
              <node concept="3clFbS" id="DiG07wPT8F" role="2VODD2">
                <node concept="3clFbF" id="DiG07wPWJC" role="3cqZAp">
                  <node concept="2OqwBi" id="DiG07wPXst" role="3clFbG">
                    <node concept="30H73N" id="DiG07wPWJB" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="DiG07wPYLX" role="2OqNvi">
                      <ref role="3TtcxE" to="zg65:DiG07wJgjd" resolve="inputField" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="9aQIb" id="DiG07wQNIV" role="3cqZAp">
          <node concept="3clFbS" id="DiG07wQNIX" role="9aQI4">
            <node concept="3clFbF" id="DiG07wRciH" role="3cqZAp">
              <node concept="1rXfSq" id="DiG07wRciG" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="2ShNRf" id="DiG07wRf90" role="37wK5m">
                  <node concept="1pGfFk" id="DiG07wRnOf" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                    <node concept="Xl_RD" id="DiG07wRpOl" role="37wK5m">
                      <property role="Xl_RC" value="Output" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="DiG07wRwl7" role="3cqZAp">
              <node concept="1rXfSq" id="DiG07wRwl5" role="3clFbG">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
                <node concept="37vLTw" id="DiG07wRCt1" role="37wK5m">
                  <ref role="3cqZAo" node="DiG07wOtN6" resolve="outputField" />
                  <node concept="1ZhdrF" id="DiG07wREJI" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="DiG07wREJJ" role="3$ytzL">
                      <node concept="3clFbS" id="DiG07wREJK" role="2VODD2">
                        <node concept="3clFbF" id="DiG07wRIJL" role="3cqZAp">
                          <node concept="2OqwBi" id="DiG07wRKsn" role="3clFbG">
                            <node concept="1iwH7S" id="DiG07wRIJK" role="2Oq$k0" />
                            <node concept="1iwH70" id="DiG07wRM81" role="2OqNvi">
                              <ref role="1iwH77" node="DiG07wRPOA" resolve="OutputFieldDeclaration" />
                              <node concept="30H73N" id="DiG07wRV61" role="1iwH7V" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="DiG07wRDPU" role="lGtFl">
            <node concept="3JmXsc" id="DiG07wRDPX" role="3Jn$fo">
              <node concept="3clFbS" id="DiG07wRDPY" role="2VODD2">
                <node concept="3clFbF" id="DiG07wRDQ4" role="3cqZAp">
                  <node concept="2OqwBi" id="DiG07wRDPZ" role="3clFbG">
                    <node concept="3Tsc0h" id="DiG07wRDQ2" role="2OqNvi">
                      <ref role="3TtcxE" to="zg65:DiG07wJjgN" resolve="outputField" />
                    </node>
                    <node concept="30H73N" id="DiG07wRDQ3" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="DiG07wNgnX" role="3cqZAp">
          <node concept="1rXfSq" id="DiG07wNgnV" role="3clFbG">
            <ref role="37wK5l" node="DiG07wM$4E" resolve="update" />
          </node>
        </node>
        <node concept="3clFbF" id="DiG07wNu6I" role="3cqZAp">
          <node concept="1rXfSq" id="DiG07wNu6G" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JFrame.setDefaultCloseOperation(int)" resolve="setDefaultCloseOperation" />
            <node concept="10M0yZ" id="DiG07wNBC4" role="37wK5m">
              <ref role="3cqZAo" to="dxuu:~WindowConstants.EXIT_ON_CLOSE" resolve="EXIT_ON_CLOSE" />
              <ref role="1PxDUh" to="dxuu:~JFrame" resolve="JFrame" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="DiG07wNE9e" role="3cqZAp">
          <node concept="1rXfSq" id="DiG07wNE9c" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Window.pack()" resolve="pack" />
          </node>
        </node>
        <node concept="3clFbF" id="DiG07wNK94" role="3cqZAp">
          <node concept="1rXfSq" id="DiG07wNK92" role="3clFbG">
            <ref role="37wK5l" to="z60i:~Window.setVisible(boolean)" resolve="setVisible" />
            <node concept="3clFbT" id="DiG07wNNFL" role="37wK5m">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="DiG07wMBBt" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="DiG07wM$4E" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3clFbS" id="DiG07wM$4H" role="3clF47">
        <node concept="3cpWs8" id="DiG07wRYQN" role="3cqZAp">
          <node concept="3cpWsn" id="DiG07wRYQQ" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="DiG07wRYQM" role="1tU5fm" />
            <node concept="3cmrfG" id="DiG07wS1UV" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="17Uvod" id="DiG07wSmnU" role="lGtFl">
              <property role="2qtEX9" value="name" />
              <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
              <node concept="3zFVjK" id="DiG07wSmnV" role="3zH0cK">
                <node concept="3clFbS" id="DiG07wSmnW" role="2VODD2">
                  <node concept="3clFbF" id="DiG07wSvbt" role="3cqZAp">
                    <node concept="2OqwBi" id="DiG07wSxSe" role="3clFbG">
                      <node concept="1iwH7S" id="DiG07wSvbs" role="2Oq$k0" />
                      <node concept="2piZGk" id="DiG07wSzDq" role="2OqNvi">
                        <node concept="Xl_RD" id="DiG07wS_tg" role="2piZGb">
                          <property role="Xl_RC" value="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1pdMLZ" id="DiG07wSZzt" role="lGtFl">
              <ref role="2rW$FS" node="DiG07wSPiJ" resolve="LocalVar" />
            </node>
          </node>
          <node concept="1WS0z7" id="DiG07wS4PW" role="lGtFl">
            <node concept="3JmXsc" id="DiG07wS4PX" role="3Jn$fo">
              <node concept="3clFbS" id="DiG07wS4PY" role="2VODD2">
                <node concept="3clFbF" id="DiG07wUfkG" role="3cqZAp">
                  <node concept="2OqwBi" id="DiG07wUgIq" role="3clFbG">
                    <node concept="30H73N" id="DiG07wUfkF" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="DiG07wUj3E" role="2OqNvi">
                      <ref role="3TtcxE" to="zg65:DiG07wJgjd" resolve="inputField" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="DiG07wTeqV" role="3cqZAp">
          <node concept="3uVAMA" id="DiG07wTOJf" role="1zxBo5">
            <node concept="XOnhg" id="DiG07wTOJg" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="DiG07wTOJh" role="1tU5fm">
                <node concept="3uibUv" id="DiG07wTU$m" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="DiG07wTOJi" role="1zc67A" />
          </node>
          <node concept="3clFbS" id="DiG07wTeqX" role="1zxBo7">
            <node concept="3clFbF" id="DiG07wTgNS" role="3cqZAp">
              <node concept="37vLTI" id="DiG07wTnM1" role="3clFbG">
                <node concept="2YIFZM" id="DiG07wTyD9" role="37vLTx">
                  <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String)" resolve="parseInt" />
                  <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                  <node concept="2OqwBi" id="DiG07wTCfk" role="37wK5m">
                    <node concept="37vLTw" id="DiG07wT_Tp" role="2Oq$k0">
                      <ref role="3cqZAo" node="DiG07wO4vD" resolve="inputField" />
                      <node concept="1ZhdrF" id="DiG07wUFi5" role="lGtFl">
                        <property role="2qtEX8" value="variableDeclaration" />
                        <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                        <node concept="3$xsQk" id="DiG07wUFi6" role="3$ytzL">
                          <node concept="3clFbS" id="DiG07wUFi7" role="2VODD2">
                            <node concept="3clFbF" id="DiG07wUIOE" role="3cqZAp">
                              <node concept="2OqwBi" id="DiG07wUKYn" role="3clFbG">
                                <node concept="1iwH7S" id="DiG07wUIOD" role="2Oq$k0" />
                                <node concept="1iwH70" id="DiG07wUNAv" role="2OqNvi">
                                  <ref role="1iwH77" node="DiG07wQ8RA" resolve="InputFieldDeclaration" />
                                  <node concept="30H73N" id="DiG07wUUm8" role="1iwH7V" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="DiG07wTGs0" role="2OqNvi">
                      <ref role="37wK5l" to="r791:~JTextComponent.getText()" resolve="getText" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="DiG07wTgNQ" role="37vLTJ">
                  <ref role="3cqZAo" node="DiG07wRYQQ" resolve="i" />
                  <node concept="1ZhdrF" id="DiG07wUl5a" role="lGtFl">
                    <property role="2qtEX8" value="variableDeclaration" />
                    <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                    <node concept="3$xsQk" id="DiG07wUl5b" role="3$ytzL">
                      <node concept="3clFbS" id="DiG07wUl5c" role="2VODD2">
                        <node concept="3clFbF" id="DiG07wUt_A" role="3cqZAp">
                          <node concept="2OqwBi" id="DiG07wUwje" role="3clFbG">
                            <node concept="1iwH7S" id="DiG07wUt__" role="2Oq$k0" />
                            <node concept="1iwH70" id="DiG07wUyod" role="2OqNvi">
                              <ref role="1iwH77" node="DiG07wSPiJ" resolve="LocalVar" />
                              <node concept="30H73N" id="DiG07wUCqy" role="1iwH7V" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1WS0z7" id="DiG07wU0Ni" role="lGtFl">
                <node concept="3JmXsc" id="DiG07wU0Nj" role="3Jn$fo">
                  <node concept="3clFbS" id="DiG07wU0Nk" role="2VODD2">
                    <node concept="3clFbF" id="DiG07wU5g_" role="3cqZAp">
                      <node concept="2OqwBi" id="DiG07wU6B0" role="3clFbG">
                        <node concept="30H73N" id="DiG07wU5g$" role="2Oq$k0" />
                        <node concept="3Tsc0h" id="DiG07wU8Tp" role="2OqNvi">
                          <ref role="3TtcxE" to="zg65:DiG07wJgjd" resolve="inputField" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="DiG07wV74N" role="3cqZAp">
          <node concept="2OqwBi" id="DiG07wV9QE" role="3clFbG">
            <node concept="37vLTw" id="DiG07wV74L" role="2Oq$k0">
              <ref role="3cqZAo" node="DiG07wOtN6" resolve="outputField" />
              <node concept="1ZhdrF" id="DiG07wVpB4" role="lGtFl">
                <property role="2qtEX8" value="variableDeclaration" />
                <property role="P3scX" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" />
                <node concept="3$xsQk" id="DiG07wVpB5" role="3$ytzL">
                  <node concept="3clFbS" id="DiG07wVpB6" role="2VODD2">
                    <node concept="3clFbF" id="DiG07wVxkd" role="3cqZAp">
                      <node concept="2OqwBi" id="DiG07wV$qI" role="3clFbG">
                        <node concept="1iwH7S" id="DiG07wVxkc" role="2Oq$k0" />
                        <node concept="1iwH70" id="DiG07wVBrt" role="2OqNvi">
                          <ref role="1iwH77" node="DiG07wRPOA" resolve="OutputFieldDeclaration" />
                          <node concept="30H73N" id="DiG07wVICP" role="1iwH7V" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="DiG07wVex$" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
              <node concept="3cpWs3" id="DiG07wVWeM" role="37wK5m">
                <node concept="1eOMI4" id="DiG07wWgES" role="3uHU7w">
                  <node concept="10Nm6u" id="DiG07wW03D" role="1eOMHV">
                    <node concept="29HgVG" id="DiG07wWG3B" role="lGtFl">
                      <node concept="3NFfHV" id="DiG07wWG3C" role="3NFExx">
                        <node concept="3clFbS" id="DiG07wWG3D" role="2VODD2">
                          <node concept="3clFbF" id="DiG07wWG3J" role="3cqZAp">
                            <node concept="2OqwBi" id="DiG07wWG3E" role="3clFbG">
                              <node concept="3TrEf2" id="DiG07wWG3H" role="2OqNvi">
                                <ref role="3Tt5mk" to="zg65:DiG07wKMbY" resolve="expression" />
                              </node>
                              <node concept="30H73N" id="DiG07wWG3I" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="DiG07wVQdP" role="3uHU7B" />
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="DiG07wVmTx" role="lGtFl">
            <node concept="3JmXsc" id="DiG07wVmT$" role="3Jn$fo">
              <node concept="3clFbS" id="DiG07wVmT_" role="2VODD2">
                <node concept="3clFbF" id="DiG07wVmTF" role="3cqZAp">
                  <node concept="2OqwBi" id="DiG07wVmTA" role="3clFbG">
                    <node concept="3Tsc0h" id="DiG07wVmTD" role="2OqNvi">
                      <ref role="3TtcxE" to="zg65:DiG07wJjgN" resolve="outputField" />
                    </node>
                    <node concept="30H73N" id="DiG07wVmTE" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="DiG07wMz9u" role="1B3o_S" />
      <node concept="3cqZAl" id="DiG07wMzTA" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="DiG07wMxIg" role="jymVt" />
    <node concept="2YIFZL" id="DiG07wLdqd" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="DiG07wLdqe" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="DiG07wLdqf" role="1tU5fm">
          <node concept="17QB3L" id="DiG07wLdqg" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="DiG07wLdqh" role="3clF45" />
      <node concept="3Tm1VV" id="DiG07wLdqi" role="1B3o_S" />
      <node concept="3clFbS" id="DiG07wLdqj" role="3clF47">
        <node concept="3clFbF" id="DiG07wLnyX" role="3cqZAp">
          <node concept="2YIFZM" id="DiG07wLpnR" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <node concept="2ShNRf" id="DiG07wLr46" role="37wK5m">
              <node concept="YeOm9" id="DiG07wLvSx" role="2ShVmc">
                <node concept="1Y3b0j" id="DiG07wLvS$" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <property role="373rjd" value="true" />
                  <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="DiG07wLvS_" role="1B3o_S" />
                  <node concept="3clFb_" id="DiG07wLvSN" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="DiG07wLvSO" role="1B3o_S" />
                    <node concept="3cqZAl" id="DiG07wLvSQ" role="3clF45" />
                    <node concept="3clFbS" id="DiG07wLvSR" role="3clF47">
                      <node concept="3clFbF" id="DiG07wLy9l" role="3cqZAp">
                        <node concept="2ShNRf" id="DiG07wLy9j" role="3clFbG">
                          <node concept="1pGfFk" id="DiG07wMFfA" role="2ShVmc">
                            <ref role="37wK5l" node="DiG07wMETf" resolve="CalculatorImpl" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="DiG07wLvST" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

