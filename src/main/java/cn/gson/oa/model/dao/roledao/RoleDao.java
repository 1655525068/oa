package cn.gson.oa.model.dao.roledao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import cn.gson.oa.model.entity.role.Role;

public interface RoleDao extends JpaRepository<Role, Long>{

	@Query("select ro from Role as ro where ro.roleName like %?1%")
	Page<Role> findbyrolename(String val, Pageable pa);

}
