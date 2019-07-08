-- begin DDCSR_SCHEDULED_REPORT_CONFIG
alter table DDCSR_SCHEDULED_REPORT_CONFIG add constraint FK_DDCSR_SCHEDULED_REPORT_CONFIG_ON_REPORT foreign key (REPORT_ID) references REPORT_REPORT(ID)^
alter table DDCSR_SCHEDULED_REPORT_CONFIG add constraint FK_DDCSR_SCHEDULED_REPORT_CONFIG_ON_REPORT_TEMPLATE foreign key (REPORT_TEMPLATE_ID) references REPORT_TEMPLATE(ID)^
alter table DDCSR_SCHEDULED_REPORT_CONFIG add constraint FK_DDCSR_SCHEDULED_REPORT_CONFIG_ON_SCHEDULED_TASK foreign key (SCHEDULED_TASK_ID) references SYS_SCHEDULED_TASK(ID)^
create index IDX_DDCSR_SCHEDULED_REPORT_CONFIG_ON_REPORT on DDCSR_SCHEDULED_REPORT_CONFIG (REPORT_ID)^
create index IDX_DDCSR_SCHEDULED_REPORT_CONFIG_ON_REPORT_TEMPLATE on DDCSR_SCHEDULED_REPORT_CONFIG (REPORT_TEMPLATE_ID)^
create index IDX_DDCSR_SCHEDULED_REPORT_CONFIG_ON_SCHEDULED_TASK on DDCSR_SCHEDULED_REPORT_CONFIG (SCHEDULED_TASK_ID)^
-- end DDCSR_SCHEDULED_REPORT_CONFIG
-- begin DDCSR_SCHEDULED_REPORT_EXEC
alter table DDCSR_SCHEDULED_REPORT_EXEC add constraint FK_DDCSR_SCHEDULED_REPORT_EXEC_ON_CONFIG foreign key (CONFIG_ID) references DDCSR_SCHEDULED_REPORT_CONFIG(ID)^
alter table DDCSR_SCHEDULED_REPORT_EXEC add constraint FK_DDCSR_SCHEDULED_REPORT_EXEC_ON_REPORT_FILE foreign key (REPORT_FILE_ID) references SYS_FILE(ID)^
create index IDX_DDCSR_SCHEDULED_REPORT_EXEC_ON_CONFIG on DDCSR_SCHEDULED_REPORT_EXEC (CONFIG_ID)^
create index IDX_DDCSR_SCHEDULED_REPORT_EXEC_ON_REPORT_FILE on DDCSR_SCHEDULED_REPORT_EXEC (REPORT_FILE_ID)^
-- end DDCSR_SCHEDULED_REPORT_EXEC
