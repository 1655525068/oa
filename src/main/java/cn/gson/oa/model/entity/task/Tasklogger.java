package cn.gson.oa.model.entity.task;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "aoa_task_logger")

//任务日志表
public class Tasklogger {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "logger_id")
    private Long loggerId;//任务日志id主键

    @Column(name = "create_time")
    private Date createTime;//任务日志创建时间

    @Column(name = "logger_ticking")
    private String loggerTicking;//任务日志反馈内容

    @ManyToOne
    @JoinColumn(name = "task_id")
    private Tasklist taskId;//任务id外键

    @Column(name = "username")
    private String username;//任务日志生成人

    @Column(name = "logger_statusid")
    private Integer loggerStatusid; //状态id

    // 识别责任人
    @Column(name = "logger_identify_responsible_person")
    private String loggerIdentifyResponsiblePerson;

    // 处理人
    @Column(name = "logger_process_person")
    private String loggerProcessPerson;

    /*处理流程*/
    // 是否需要处理
    @Column(name = "logger_should_handle")
    private String loggerShouldHandle;

    // 处理方式 (ICR/细化)
    @Column(name = "logger_handle_method")
    private String loggerHandleMethod;

    // 处理单号
    @Column(name = "logger_process_order_number")
    private String loggerProcessOrderNumber;

    // 处理完成时间
    @Column(name = "logger_process_completion_time")
    private String loggerProcessCompletionTime;

    // 责任方
    @Column(name = "logger_process_responsible_party")
    private String loggerProcessResponsibleParty;

    // 备注
    @Column(name = "logger_remarks")
    private String loggerRemarks;

    // 是否涉及索赔
    @Column(name = "logger_should_claim")
    private String loggerShouldClaim;

    // 计划关闭时间
    @Column(name = "logger_plan_to_close_time")
    private String loggerPlanToCloseTime;
    // 实际关闭时间
    @Column(name = "logger_actual_close_time")
    private String loggerActualCloseTime;

    // 设计点值
    @Column(name = "logger_design_point_value")
    private String loggerDesignPointValue;

    // 审核点值
    @Column(name = "logger_audit_point_value")
    private String loggerAuditPointValue;

    // 核实郑分会审单问题是否修改
    @Column(name = "logger_modify")
    private String loggerModify;

    // 完成时间
    @Column(name = "logger_completion_time")
    private String loggerCompletionTime;

    public Long getLoggerId() {
        return loggerId;
    }

    public void setLoggerId(Long loggerId) {
        this.loggerId = loggerId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getLoggerTicking() {
        return loggerTicking;
    }

    public void setLoggerTicking(String loggerTicking) {
        this.loggerTicking = loggerTicking;
    }

    public Tasklist getTaskId() {
        return taskId;
    }

    public void setTaskId(Tasklist taskId) {
        this.taskId = taskId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getLoggerStatusid() {
        return loggerStatusid;
    }

    public void setLoggerStatusid(Integer loggerStatusid) {
        this.loggerStatusid = loggerStatusid;
    }

    public String getLoggerIdentifyResponsiblePerson() {
        return loggerIdentifyResponsiblePerson;
    }

    public void setLoggerIdentifyResponsiblePerson(String loggerIdentifyResponsiblePerson) {
        this.loggerIdentifyResponsiblePerson = loggerIdentifyResponsiblePerson;
    }

    public String getLoggerProcessPerson() {
        return loggerProcessPerson;
    }

    public void setLoggerProcessPerson(String loggerProcessPerson) {
        this.loggerProcessPerson = loggerProcessPerson;
    }

    public String getLoggerShouldHandle() {
        return loggerShouldHandle;
    }

    public void setLoggerShouldHandle(String loggerShouldHandle) {
        this.loggerShouldHandle = loggerShouldHandle;
    }

    public String getLoggerHandleMethod() {
        return loggerHandleMethod;
    }

    public void setLoggerHandleMethod(String loggerHandleMethod) {
        this.loggerHandleMethod = loggerHandleMethod;
    }

    public String getLoggerProcessOrderNumber() {
        return loggerProcessOrderNumber;
    }

    public void setLoggerProcessOrderNumber(String loggerProcessOrderNumber) {
        this.loggerProcessOrderNumber = loggerProcessOrderNumber;
    }

    public String getLoggerProcessCompletionTime() {
        return loggerProcessCompletionTime;
    }

    public void setLoggerProcessCompletionTime(String loggerProcessCompletionTime) {
        this.loggerProcessCompletionTime = loggerProcessCompletionTime;
    }

    public String getLoggerProcessResponsibleParty() {
        return loggerProcessResponsibleParty;
    }

    public void setLoggerProcessResponsibleParty(String loggerProcessResponsibleParty) {
        this.loggerProcessResponsibleParty = loggerProcessResponsibleParty;
    }

    public String getLoggerRemarks() {
        return loggerRemarks;
    }

    public void setLoggerRemarks(String loggerRemarks) {
        this.loggerRemarks = loggerRemarks;
    }

    public String getLoggerShouldClaim() {
        return loggerShouldClaim;
    }

    public void setLoggerShouldClaim(String loggerShouldClaim) {
        this.loggerShouldClaim = loggerShouldClaim;
    }

    public String getLoggerPlanToCloseTime() {
        return loggerPlanToCloseTime;
    }

    public void setLoggerPlanToCloseTime(String loggerPlanToCloseTime) {
        this.loggerPlanToCloseTime = loggerPlanToCloseTime;
    }

    public String getLoggerActualCloseTime() {
        return loggerActualCloseTime;
    }

    public void setLoggerActualCloseTime(String loggerActualCloseTime) {
        this.loggerActualCloseTime = loggerActualCloseTime;
    }

    public String getLoggerDesignPointValue() {
        return loggerDesignPointValue;
    }

    public void setLoggerDesignPointValue(String loggerDesignPointValue) {
        this.loggerDesignPointValue = loggerDesignPointValue;
    }

    public String getLoggerAuditPointValue() {
        return loggerAuditPointValue;
    }

    public void setLoggerAuditPointValue(String loggerAuditPointValue) {
        this.loggerAuditPointValue = loggerAuditPointValue;
    }

    public String getLoggerModify() {
        return loggerModify;
    }

    public void setLoggerModify(String loggerModify) {
        this.loggerModify = loggerModify;
    }

    public String getLoggerCompletionTime() {
        return loggerCompletionTime;
    }

    public void setLoggerCompletionTime(String loggerCompletionTime) {
        this.loggerCompletionTime = loggerCompletionTime;
    }

    @Override
    public String toString() {
        return "Tasklogger [loggerId=" + loggerId + ", createTime=" + createTime + ", loggerTicking=" + loggerTicking
                + ", username=" + username + ", loggerStatusid=" + loggerStatusid + "]";
    }


}
