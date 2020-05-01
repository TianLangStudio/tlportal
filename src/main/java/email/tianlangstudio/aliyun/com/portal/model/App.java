/**
 * @Description:
 * @Author: tianlang
 * @Email: tianlangstudio@aliyun.com
 * @Date: 20-4-30 下午7:00
 */
package email.tianlangstudio.aliyun.com.portal.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.elasticsearch.annotations.Field;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;


@Entity(name = "t_app")
//@Table(name = "t_app")
@DynamicUpdate
@DynamicInsert
public class App {
     public static final int STATE_SHOW = 1;
     public static final int STATE_HIDDEN = 0;
     @Id
     private String id;
     @Field(name = "category_id")
     private String categoryId;
     @Field
     private String name;
     @Field
     private String intro;

     @Field(name = "url")
     private String url;
     @Field
     private String logo;
     @Field
     private Integer sort;
     @Field
     private String creator;
     @Field
     private String updater;
     @Field
     private Integer state = STATE_SHOW;

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    @Field
     @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
     private Date createAt;
     @Field
     @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
     private Date updateAt;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public String getUpdater() {
        return updater;
    }

    public void setUpdater(String updater) {
        this.updater = updater;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public Date getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Date updateAt) {
        this.updateAt = updateAt;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }
}
