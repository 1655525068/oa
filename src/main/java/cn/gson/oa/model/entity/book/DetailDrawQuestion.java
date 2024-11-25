package cn.gson.oa.model.entity.book;

import javax.persistence.*;

@Entity
@Table(name = "ao_detail_draw_question")
public class DetailDrawQuestion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "dd_id")
    private Long ddId;

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

    @ManyToOne()
    @JoinColumn(name = "book_id")
    private DetailDraw dds;//对应三单表

    public Long getDdId() {
        return ddId;
    }

    public void setDdId(Long ddId) {
        this.ddId = ddId;
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

    public DetailDraw getDds() {
        return dds;
    }

    public void setDds(DetailDraw dds) {
        this.dds = dds;
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
}
