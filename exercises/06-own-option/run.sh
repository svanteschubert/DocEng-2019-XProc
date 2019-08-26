#!/bin/bash
java -jar -javaagent:../MorganaXProc-III/MorganaXProc-III_lib/quasar-core-0.7.9.jar ../MorganaXProc-III-0.8.14-demo/MorganaXProc-III.jar pipeline.xpl -input:source=input.xml -option:username=erik
