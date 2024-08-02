package cn.gson.oa.model.entity.book;

import javax.persistence.*;

/**
 * @author bochen.wang
 * @date 2024-08-02
 * describe:现场设计室变更三单管理台账
 */
@Entity
@Table(name = "ao_three_book")
public class ThreeBook {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "book_id")
    // book_id
    private String bookId;

    /*基本信息*/
    // 序号
    @Column(name = "serial_number")
    private String serialNumber;

    // 类型
    @Column(name = "type")
    private String type;

    // 三单号
    @Column(name = "three_book_numbers")
    private String threeBookNumbers;

    // 中文名称
    @Column(name = "chinese_name")
    private String chineseName;

    // FCR版本
    @Column(name = "fcr_version")
    private String FCRVersion;

    // 状态
    @Column(name = "state")
    private String state;

    // 编制人
    @Column(name = "prepared_by")
    private String preparedBy;

    // 最新版
    @Column(name = "latest_version")
    private String latestVersion;

    // 接收时间
    @Column(name = "receiving_time")
    private String receivingTime;

    // 分发时间
    @Column(name = "distribution_time")
    private String distributionTime;

    // 作废标识
    @Column(name = "invalid_identification")
    private String invalidIdentification;

    // 相关文件编码
    @Column(name = "related_document_codes")
    private String relatedDocumentCodes;

    // 相关文件内部编码
    @Column(name = "internal_codes")
    private String internalCodes;

    // 图纸版本
    @Column(name = "draw_version")
    private String drawVersion;

    // 专业
    @Column(name = "professional_type")
    private String professionalType;

    // 责任方
    @Column(name = "responsible_party")
    private String responsibleParty;

    // 识别责任人
    @Column(name = "identify_responsible_person")
    private String identifyResponsiblePerson;

    // 处理人
    @Column(name = "process_person")
    private String processPerson;

    /*处理流程*/
    // 是否需要处理
    @Column(name = "should_handle")
    private String shouldHandle;

    // 处理方式 (ICR/细化)
    @Column(name = "handle_method")
    private String handleMethod;

    // 处理单号
    @Column(name = "process_order_number")
    private String processOrderNumber;

    // 处理完成时间
    @Column(name = "process_completion_time")
    private String processCompletionTime;

    // 责任方
    @Column(name = "process_responsible_party")
    private String processResponsibleParty;

    // 备注
    @Column(name = "remarks")
    private String remarks;

    // 是否涉及索赔
    @Column(name = "should_claim")
    private String shouldClaim;

    /*关闭时间*/
    // 计划关闭时间（CR关闭时间）直接关闭/转FCR/转DEN
    @Column(name = "plan_to_close_time")
    private String planToCloseTime;

    // 实际关闭时间
    @Column(name = "actual_close_time")
    private String actualCloseTime;

    // 设计点值
    @Column(name = "design_point_value")
    private String designPointValue;

    // 审核点值
    @Column(name = "audit_point_value")
    private String auditPointValue;

    public String getBookId() {
        return bookId;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getThreeBookNumbers() {
        return threeBookNumbers;
    }

    public void setThreeBookNumbers(String threeBookNumbers) {
        this.threeBookNumbers = threeBookNumbers;
    }

    public String getChineseName() {
        return chineseName;
    }

    public void setChineseName(String chineseName) {
        this.chineseName = chineseName;
    }

    public String getFCRVersion() {
        return FCRVersion;
    }

    public void setFCRVersion(String FCRVersion) {
        this.FCRVersion = FCRVersion;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPreparedBy() {
        return preparedBy;
    }

    public void setPreparedBy(String preparedBy) {
        this.preparedBy = preparedBy;
    }

    public String getLatestVersion() {
        return latestVersion;
    }

    public void setLatestVersion(String latestVersion) {
        this.latestVersion = latestVersion;
    }

    public String getReceivingTime() {
        return receivingTime;
    }

    public void setReceivingTime(String receivingTime) {
        this.receivingTime = receivingTime;
    }

    public String getDistributionTime() {
        return distributionTime;
    }

    public void setDistributionTime(String distributionTime) {
        this.distributionTime = distributionTime;
    }

    public String getInvalidIdentification() {
        return invalidIdentification;
    }

    public void setInvalidIdentification(String invalidIdentification) {
        this.invalidIdentification = invalidIdentification;
    }

    public String getRelatedDocumentCodes() {
        return relatedDocumentCodes;
    }

    public void setRelatedDocumentCodes(String relatedDocumentCodes) {
        this.relatedDocumentCodes = relatedDocumentCodes;
    }

    public String getInternalCodes() {
        return internalCodes;
    }

    public void setInternalCodes(String internalCodes) {
        this.internalCodes = internalCodes;
    }

    public String getDrawVersion() {
        return drawVersion;
    }

    public void setDrawVersion(String drawVersion) {
        this.drawVersion = drawVersion;
    }

    public String getProfessionalType() {
        return professionalType;
    }

    public void setProfessionalType(String professionalType) {
        this.professionalType = professionalType;
    }

    public String getResponsibleParty() {
        return responsibleParty;
    }

    public void setResponsibleParty(String responsibleParty) {
        this.responsibleParty = responsibleParty;
    }

    public String getIdentifyResponsiblePerson() {
        return identifyResponsiblePerson;
    }

    public void setIdentifyResponsiblePerson(String identifyResponsiblePerson) {
        this.identifyResponsiblePerson = identifyResponsiblePerson;
    }

    public String getProcessPerson() {
        return processPerson;
    }

    public void setProcessPerson(String processPerson) {
        this.processPerson = processPerson;
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

    public String getShouldHandle() {
        return shouldHandle;
    }

    public void setShouldHandle(String shouldHandle) {
        this.shouldHandle = shouldHandle;
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

    public String getProcessCompletionTime() {
        return processCompletionTime;
    }

    public void setProcessCompletionTime(String processCompletionTime) {
        this.processCompletionTime = processCompletionTime;
    }

    public String getProcessResponsibleParty() {
        return processResponsibleParty;
    }

    public void setProcessResponsibleParty(String processResponsibleParty) {
        this.processResponsibleParty = processResponsibleParty;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getShouldClaim() {
        return shouldClaim;
    }

    public void setShouldClaim(String shouldClaim) {
        this.shouldClaim = shouldClaim;
    }

    public String getPlanToCloseTime() {
        return planToCloseTime;
    }

    public void setPlanToCloseTime(String planToCloseTime) {
        this.planToCloseTime = planToCloseTime;
    }

    public String getActualCloseTime() {
        return actualCloseTime;
    }

    public void setActualCloseTime(String actualCloseTime) {
        this.actualCloseTime = actualCloseTime;
    }

    @Override
    public String toString() {
        return "ThreeBook{" +
                "bookId='" + bookId + '\'' +
                ", serialNumber='" + serialNumber + '\'' +
                ", type='" + type + '\'' +
                ", threeBookNumbers='" + threeBookNumbers + '\'' +
                ", chineseName='" + chineseName + '\'' +
                ", FCRVersion='" + FCRVersion + '\'' +
                ", state='" + state + '\'' +
                ", preparedBy='" + preparedBy + '\'' +
                ", latestVersion='" + latestVersion + '\'' +
                ", receivingTime='" + receivingTime + '\'' +
                ", distributionTime='" + distributionTime + '\'' +
                ", invalidIdentification='" + invalidIdentification + '\'' +
                ", relatedDocumentCodes='" + relatedDocumentCodes + '\'' +
                ", internalCodes='" + internalCodes + '\'' +
                ", drawVersion='" + drawVersion + '\'' +
                ", professionalType='" + professionalType + '\'' +
                ", responsibleParty='" + responsibleParty + '\'' +
                ", identifyResponsiblePerson='" + identifyResponsiblePerson + '\'' +
                ", processPerson='" + processPerson + '\'' +
                ", designPointValue='" + designPointValue + '\'' +
                ", auditPointValue='" + auditPointValue + '\'' +
                ", shouldHandle='" + shouldHandle + '\'' +
                ", handleMethod='" + handleMethod + '\'' +
                ", processOrderNumber='" + processOrderNumber + '\'' +
                ", processCompletionTime='" + processCompletionTime + '\'' +
                ", processResponsibleParty='" + processResponsibleParty + '\'' +
                ", remarks='" + remarks + '\'' +
                ", shouldClaim='" + shouldClaim + '\'' +
                ", planToCloseTime='" + planToCloseTime + '\'' +
                ", actualCloseTime='" + actualCloseTime + '\'' +
                '}';
    }
}
