package cn.gson.oa.model.entity.book;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;

@Entity
@Table(name = "ao_profession")
public class Profession {
    @Id
    @Column(name = "pro_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long proId;

    @Column(name = "pro_name")
    @NotEmpty(message="图纸类型名字不为空")
    private String proName; // 菜单名字
}
