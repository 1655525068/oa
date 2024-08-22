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
}
