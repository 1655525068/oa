package cn.gson.oa.model.entity.book;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

@Entity
@Table(name = "ao_draw_type")
public class DrawType {

    @Id
    @Column(name = "dt_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long dtId;

    @Column(name = "dt_name")
    @NotEmpty(message = "图纸类型名字不为空")
    private String dtName;

    public Long getDtId() {
        return dtId;
    }

    public void setDtId(Long dtId) {
        this.dtId = dtId;
    }

    public String getDtName() {
        return dtName;
    }

    public void setDtName(String dtName) {
        this.dtName = dtName;
    }
}
