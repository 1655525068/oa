package cn.gson.oa.model.entity.book;


import javax.persistence.*;

@Entity
@Table(name = "ao_three_book_process")
public class ThreeBookProcess {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "tb_id")
    // tbId
    private Long tbId;

    // 处理方式 (ICR/细化)
    @Column(name = "handle_method")
    private String handleMethod;

    // 处理单号
    @Column(name = "process_order_number")
    private String processOrderNumber;

    // 备注
    @Column(name = "remarks")
    private String remarks;

    @ManyToOne()
    @JoinColumn(name = "book_id")
    private ThreeBook tbs;//对应三单表

    public Long getTbId() {
        return tbId;
    }

    public void setTbId(Long tbId) {
        this.tbId = tbId;
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

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public ThreeBook getTbs() {
        return tbs;
    }

    public void setTbs(ThreeBook tbs) {
        this.tbs = tbs;
    }



}
