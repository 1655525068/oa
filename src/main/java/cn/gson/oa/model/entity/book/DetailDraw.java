package cn.gson.oa.model.entity.book;

import javax.persistence.*;
import java.util.List;

/**
 * @author bochen.wang
 * @date 2024-08-02
 * describe:现场设计室图纸细化管理台账
 */
@Entity
@Table(name = "ao_detail_draw")
public class DetailDraw implements Cloneable {

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone(); // 调用Object的clone方法，返回此对象的浅拷贝
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    // book_id
    @Column(name = "book_id")
    private Long bookId;
    // 序号
    @Column(name = "serial_number")
    private String serialNumber;
    // 文件编码
    @Column(name = "document_codes")
    private String documentCodes;
    // 内部文件编号
    @Column(name = "internal_document_codes")
    private String internalDocumentCodes;
    // 图册号
    @Column(name = "catalog_number")
    private String catalogNumber;
    // 专业
    @Column(name = "professional_type")
    private String professionalType;
    // 版本
    @Column(name = "version")
    private String version;
    // 状态
    @Column(name = "state")
    private String state;
    // 图纸类型
    @Column(name = "drawing_type")
    private String drawingType;
    // 接收日期
    @Column(name = "receiving_time")
    private String receivingTime;
    // 是否需FU
    @Column(name = "do_need_fu")
    private String doNeedFU;
    // FU计划时间
    @Column(name = "plan_time_fu")
    private String planTimeFU;
    // FU单号
    @Column(name = "number_fu")
    private String numberFU;
    // 计划细化完成时间（无需细化填/）
    @Column(name = "plan_completion_time")
    private String planCompletionTime;
    // 细化责任人
    @Column(name = "responsible_person")
    private String responsiblePerson;
    // 问题
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "dds", orphanRemoval = true)
    private List<DetailDrawQuestion> questions;
    // 问题描述
    @Column(name = "problem_description")
    private String problemDescription;
    // 图纸问题数量
    @Column(name = "problem_count")
    private String problemCount;
    // 处理方式
    @Column(name = "handle_method")
    private String handleMethod;
    // 处理单号
    @Column(name = "process_order_number")
    private String processOrderNumber;
    // 核实郑分会审单问题是否修改
    @Column(name = "modify")
    private String modify;
    // 备注
    @Column(name = "remarks")
    private String remarks;
    // 完成时间
    @Column(name = "completion_time")
    private String completionTime;
    // 设计点值
    @Column(name = "design_point_value")
    private String designPointValue;
    // 审核点值
    @Column(name = "audit_point_value")
    private String auditPointValue;

    @Column(name = "logger_ticking")
    private String loggerTicking;

    @Column(name = "is_lock")
    private Integer isLock = 0;

    public Integer getIsLock() {
        return isLock;
    }

    public void setIsLock(Integer isLock) {
        this.isLock = isLock;
    }

    public Long getBookId() {
        return bookId;
    }

    public void setBookId(Long bookId) {
        this.bookId = bookId;
    }

    public String getDocumentCodes() {
        return documentCodes;
    }

    public void setDocumentCodes(String documentCodes) {
        this.documentCodes = documentCodes;
    }

    public String getInternalDocumentCodes() {
        return internalDocumentCodes;
    }

    public void setInternalDocumentCodes(String internalDocumentCodes) {
        this.internalDocumentCodes = internalDocumentCodes;
    }

    public String getCatalogNumber() {
        return catalogNumber;
    }

    public void setCatalogNumber(String catalogNumber) {
        this.catalogNumber = catalogNumber;
    }

    public String getProfessionalType() {
        return professionalType;
    }

    public void setProfessionalType(String professionalType) {
        this.professionalType = professionalType;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getDrawingType() {
        return drawingType;
    }

    public void setDrawingType(String drawingType) {
        this.drawingType = drawingType;
    }

    public String getReceivingTime() {
        return receivingTime;
    }

    public void setReceivingTime(String receivingTime) {
        this.receivingTime = receivingTime;
    }

    public String getDoNeedFU() {
        return doNeedFU;
    }

    public void setDoNeedFU(String doNeedFU) {
        this.doNeedFU = doNeedFU;
    }

    public String getPlanTimeFU() {
        return planTimeFU;
    }

    public void setPlanTimeFU(String planTimeFU) {
        this.planTimeFU = planTimeFU;
    }

    public String getNumberFU() {
        return numberFU;
    }

    public void setNumberFU(String numberFU) {
        this.numberFU = numberFU;
    }

    public String getPlanCompletionTime() {
        return planCompletionTime;
    }

    public void setPlanCompletionTime(String planCompletionTime) {
        this.planCompletionTime = planCompletionTime;
    }

    public String getResponsiblePerson() {
        return responsiblePerson;
    }

    public void setResponsiblePerson(String responsiblePerson) {
        this.responsiblePerson = responsiblePerson;
    }

    public String getProblemDescription() {
        return problemDescription;
    }

    public void setProblemDescription(String problemDescription) {
        this.problemDescription = problemDescription;
    }

    public String getProblemCount() {
        return problemCount;
    }

    public void setProblemCount(String problemCount) {
        this.problemCount = problemCount;
    }

    public String getHandleMethod() {
        return handleMethod;
    }

    public void setHandleMethod(String handleMethod) {
        this.handleMethod = handleMethod;
    }

    public String getProcessOrderNumber() {
        return processOrderNumber;
    }

    public void setProcessOrderNumber(String processOrderNumber) {
        this.processOrderNumber = processOrderNumber;
    }

    public String getModify() {
        return modify;
    }

    public void setModify(String modify) {
        this.modify = modify;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getCompletionTime() {
        return completionTime;
    }

    public void setCompletionTime(String completionTime) {
        this.completionTime = completionTime;
    }

    public String getDesignPointValue() {
        return designPointValue;
    }

    public void setDesignPointValue(String designPointValue) {
        this.designPointValue = designPointValue;
    }

    public String getAuditPointValue() {
        return auditPointValue;
    }

    public void setAuditPointValue(String auditPointValue) {
        this.auditPointValue = auditPointValue;
    }

    public List<DetailDrawQuestion> getQuestions() {
        return questions;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public void setQuestions(List<DetailDrawQuestion> questions) {
        this.questions = questions;
    }

    public String getLoggerTicking() {
        return loggerTicking;
    }

    public void setLoggerTicking(String loggerTicking) {
        this.loggerTicking = loggerTicking;
    }

    @Override
    public String toString() {
        return "DetailDraw{" +
                "bookId=" + bookId +
                ", documentCodes='" + documentCodes + '\'' +
                ", internalDocumentCodes='" + internalDocumentCodes + '\'' +
                ", catalogNumber='" + catalogNumber + '\'' +
                ", professionalType='" + professionalType + '\'' +
                ", version='" + version + '\'' +
                ", state='" + state + '\'' +
                ", drawingType='" + drawingType + '\'' +
                ", receivingTime='" + receivingTime + '\'' +
                ", doNeedFU='" + doNeedFU + '\'' +
                ", planTimeFU='" + planTimeFU + '\'' +
                ", numberFU='" + numberFU + '\'' +
                ", planCompletionTime='" + planCompletionTime + '\'' +
                ", responsiblePerson='" + responsiblePerson + '\'' +
                ", handleMethod='" + handleMethod + '\'' +
                ", processOrderNumber='" + processOrderNumber + '\'' +
                ", modify='" + modify + '\'' +
                ", remarks='" + remarks + '\'' +
                ", completionTime='" + completionTime + '\'' +
                ", designPointValue='" + designPointValue + '\'' +
                ", auditPointValue='" + auditPointValue + '\'' +
                ", loggerTicking='" + loggerTicking + '\'' +
                '}';
    }
}
