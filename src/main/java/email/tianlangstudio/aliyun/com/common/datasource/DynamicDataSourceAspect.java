package email.tianlangstudio.aliyun.com.common.datasource;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;

/**
 * aop 配置动态切换数据源
 *
 * @author lengchuan <lishuijun1992@gmail.com>
 * @date 17-4-5
 */
@Aspect
@Component
public class DynamicDataSourceAspect {
    @Around("execution(public * email.tianlangstudio.aliyun.com.email.analysis.service..*.*(..))")
    public Object around(ProceedingJoinPoint pjp) throws Throwable {
        MethodSignature methodSignature = (MethodSignature) pjp.getSignature();
        Method targetMethod = methodSignature.getMethod();
        if (targetMethod.isAnnotationPresent(TargetDataSource.class)) {
            String targetDataSource = targetMethod.getAnnotation(TargetDataSource.class).value().toString();
            System.out.println("----------数据源是:" + targetDataSource + "------");
            DataSourceContextHolder.setDataSource(targetDataSource);
        }
        Object result = pjp.proceed();//执行方法
        return result;
    }
}
