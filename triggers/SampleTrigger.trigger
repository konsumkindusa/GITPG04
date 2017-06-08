trigger SampleTrigger on Account (before insert, before update, after insert, after update) {

public string SR_Label = label.SR_Label;

for(Account acc : trigger.new){
sampleClass.method1(SR_Label);
sampleClass.method2(SR_Label);
//Adding comment for change
}

}