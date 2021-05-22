package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.demo.model.StudyModel;

@Mapper
public interface StudyModelMapper {
	@Select("select * from studymodel")
	List<StudyModel> getStudyModel();
	
	@Select("select * from studymodel WHERE name = #{name}")
	int SuccessLogin(@Param("name") String id);
	
	@Insert("INSERT INTO studymodel VALUES (#{id}, #{name})")
	int insertUserProfile(@Param("id") int id, @Param("name") String name);
	
	@Update("UPDATE studymodel SET name=#{name} WHERE id=#{id}")
	int postUserprofile(@Param("id") int id, @Param("name") String name);
	
	// DELETE from studymodel WHERE id=#{id}
}
