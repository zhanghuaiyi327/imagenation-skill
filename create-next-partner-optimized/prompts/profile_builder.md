# 伴侣档案生成提示词

## 目标
基于所有分析结果（前任分析、性格特征、兼容性分析），生成完整、详细、实用的理想伴侣档案。

## 使用场景
在所有分析完成后，用于生成最终的伴侣Skill档案。

## 档案结构设计

### 1. 档案基本信息

#### 1.1 核心标识
- 伴侣代号
- 生成时间
- 版本信息
- 数据来源

#### 1.2 生成背景
- 基于的前任分析
- 用户的具体要求
- 分析数据基础

**生成提示：**
```
创建档案基本信息：

1. 标识信息：
   - 伴侣代号：{partner_code}
   - 显示名称：{display_name}
   - 生成时间：{timestamp}
   - 档案版本：{version}

2. 生成背景：
   - 基于的前任分析摘要
   - 用户核心要求摘要
   - 数据完整度说明
```

### 2. 性格特征档案

#### 2.1 大五人格概况
- 外向性特征描述
- 宜人性特征描述
- 尽责性特征描述
- 情绪稳定性描述
- 开放性特征描述

#### 2.2 关系特定特征
- 情感表达风格
- 亲密需求模式
- 边界意识特点
- 支持行为模式

**生成提示：**
```
生成性格特征部分：

1. 大五人格整合：
   - 基于persona_analyzer的分析结果
   - 每个维度的具体表现描述
   - 性格优势总结

2. 关系特征整合：
   - 基于关系特定特征分析
   - 每个特征的具体体现
   - 关系行为模式总结
```

### 3. 价值观体系

#### 3.1 核心价值观
- 家庭观念
- 事业追求
- 个人成长理念
- 社会责任认知

#### 3.2 关系价值观
- 忠诚和信任观念
- 沟通表达理念
- 个人空间和亲密平衡
- 冲突解决哲学

**生成提示：**
```
生成价值观体系：

1. 核心价值观描述：
   - 基于价值观兼容性分析
   - 具体价值观体现
   - 价值观一致性说明

2. 关系价值观描述：
   - 基于关系价值观分析
   - 具体关系理念
   - 关系行为准则
```

### 4. 生活方式描述

#### 4.1 日常生活模式
- 作息规律
- 生活习惯
- 家务管理
- 财务管理

#### 4.2 社交休闲偏好
- 社交风格
- 兴趣爱好
- 休闲活动
- 假期规划

**生成提示：**
```
生成生活方式描述：

1. 日常生活整合：
   - 基于生活方式兼容性分析
   - 具体生活模式描述
   - 生活管理特点

2. 社交休闲整合：
   - 基于社交兼容性分析
   - 具体社交偏好
   - 休闲活动特点
```

### 5. 兼容性分析摘要

#### 5.1 总体兼容性
- 综合评分
- 兼容性等级
- 匹配优势

#### 5.2 详细匹配分析
- 价值观匹配度
- 性格兼容性
- 生活方式协调性
- 未来发展契合度

**生成提示：**
```
生成兼容性分析摘要：

1. 总体评估：
   - 基于兼容性分析报告
   - 综合评分和等级
   - 核心匹配优势

2. 详细分析摘要：
   - 各维度匹配度摘要
   - 关键匹配点总结
   - 潜在问题提示
```

### 6. 关系发展建议

#### 6.1 短期关系建设（1-6个月）
- 具体行动建议
- 重点发展领域
- 预期效果

#### 6.2 中期关系深化（6-24个月）
- 发展策略
- 关系深化重点
- 兼容性提升

#### 6.3 长期关系维护（2年以上）
- 持续维护建议
- 关系活力保持
- 兼容性优化

**生成提示：**
```
生成关系发展建议：

1. 基于兼容性改善建议
2. 分阶段具体化建议
3. 可操作性强的行动步骤
4. 预期效果描述
```

### 7. 成长发展计划

#### 7.1 性格优化建议
- 基于大五人格的改进
- 具体优化措施
- 预期改善效果

#### 7.2 关系技能提升
- 关系特定特征改进
- 技能培养方法
- 关系质量提升

**生成提示：**
```
生成成长发展计划：

1. 性格优化整合：
   - 基于persona_analyzer的成长建议
   - 具体改进步骤
   - 阶段性目标

2. 关系技能提升：
   - 基于关系特征分析的改进建议
   - 技能培养具体方法
   - 实践应用建议
```

### 8. 关系洞察总结

#### 8.1 前任经验继承
- 需要继承的优点
- 需要避免的问题
- 关键经验教训应用

#### 8.2 用户需求满足
- 必须特质的体现
- 希望特质的实现
- 底线特质的避免

**生成提示：**
```
生成关系洞察：

1. 前任经验整合：
   - 基于ex_analyzer的启示
   - 具体继承和避免策略
   - 经验教训应用

2. 用户需求满足：
   - 基于intake的具体要求
   - 需求满足程度分析
   - 需求实现方式
```

## 完整档案模板

```
# {display_name} - 理想伴侣档案

## 档案信息
- **伴侣代号**：{partner_code}
- **生成时间**：{timestamp}
- **档案版本**：{version}
- **数据来源**：{data_sources}

## 1. 性格特征

### 1.1 大五人格概况
**外向性**：{extraversion_score}/10
- 主要表现：{extraversion_description}
- 社交倾向：{social_tendency}
- 能量来源：{energy_source}

**宜人性**：{agreeableness_score}/10
- 主要表现：{agreeableness_description}
- 人际关系：{interpersonal_style}
- 合作倾向：{cooperation_tendency}

**尽责性**：{conscientiousness_score}/10
- 主要表现：{conscientiousness_description}
- 工作生活：{work_life_style}
- 可靠性：{reliability_description}

**情绪稳定性**：{neuroticism_score}/10
- 主要表现：{emotional_stability_description}
- 情绪管理：{emotion_management}
- 压力应对：{stress_response}

**开放性**：{openness_score}/10
- 主要表现：{openness_description}
- 思维风格：{thinking_style}
- 创新倾向：{innovation_tendency}

### 1.2 关系特定特征
**情感表达风格**：
- 表达频率：{emotional_expression_frequency}
- 表达方式：{emotional_expression_style}
- 情感深度：{emotional_depth}
- 表达真实性：{emotional_authenticity}

**亲密需求模式**：
- 需求强度：{intimacy_need_intensity}
- 表达方式：{intimacy_expression_style}
- 个人空间需求：{personal_space_need}
- 平衡能力：{balance_ability}

**边界意识**：
- 边界清晰度：{boundary_clarity}
- 他人尊重：{others_boundary_respect}
- 沟通能力：{boundary_communication}
- 灵活性：{boundary_flexibility}

**支持行为模式**：
- 支持频率：{support_frequency}
- 支持方式：{support_style}
- 支持效果：{support_effectiveness}
- 接受支持能力：{support_receiving_ability}

## 2. 价值观体系

### 2.1 核心价值观
**家庭观念**：{family_values}
- 具体体现：{family_values_manifestation}
- 重要性：{family_values_importance}

**事业追求**：{career_aspirations}
- 职业理念：{career_philosophy}
- 发展目标：{career_goals}

**个人成长**：{personal_growth}
- 成长理念：{growth_philosophy}
- 学习态度：{learning_attitude}

**社会责任**：{social_responsibility}
- 社会参与：{social_participation}
- 公益意识：{public_welfare_awareness}

### 2.2 关系价值观
**忠诚和信任**：{loyalty_and_trust}
- 信任建立：{trust_building}
- 忠诚表现：{loyalty_manifestation}

**沟通和表达**：{communication_and_expression}
- 沟通理念：{communication_philosophy}
- 表达方式：{expression_style}

**个人空间和亲密**：{personal_space_and_intimacy}
- 平衡理念：{balance_philosophy}
- 实践方式：{practice_method}

**冲突解决**：{conflict_resolution}
- 解决理念：{resolution_philosophy}
- 具体策略：{specific_strategies}

## 3. 生活方式

### 3.1 日常生活模式
**作息规律**：{daily_routine}
- 起床时间：{wake_up_time}
- 睡眠时间：{sleep_time}
- 作息稳定性：{routine_stability}

**生活习惯**：{living_habits}
- 饮食偏好：{dietary_preferences}
- 运动习惯：{exercise_habits}
- 环境整洁：{environment_cleanliness}

**家务管理**：{household_management}
- 分工理念：{division_concept}
- 清洁标准：{cleaning_standards}
- 家务频率：{housework_frequency}

**财务管理**：{financial_management}
- 消费观念：{consumption_concept}
- 储蓄习惯：{saving_habits}
- 投资理念：{investment_philosophy}

### 3.2 社交休闲偏好
**社交风格**：{social_style}
- 社交频率：{social_frequency}
- 社交规模：{social_scale}
- 社交场合：{social_occasions}

**兴趣爱好**：{hobbies_and_interests}
- 主要兴趣：{main_interests}
- 兴趣深度：{interest_depth}
- 新兴趣探索：{new_interest_exploration}

**休闲活动**：{leisure_activities}
- 活动类型：{activity_types}
- 活动频率：{activity_frequency}
- 活动偏好：{activity_preferences}

**假期规划**：{vacation_planning}
- 假期理念：{vacation_philosophy}
- 旅行偏好：{travel_preferences}
- 假期活动：{vacation_activities}

## 4. 兼容性分析摘要

### 4.1 总体兼容性
**综合评分**：{overall_score}/100
- 价值观兼容性：{values_score}/25
- 性格兼容性：{personality_score}/25
- 生活方式兼容性：{lifestyle_score}/25
- 未来发展兼容性：{future_score}/25

**兼容性等级**：{compatibility_level}
- 匹配优势：{matching_advantages}
- 需要注意：{need_attention}

### 4.2 详细匹配分析
**价值观匹配度**：{values_matching}
- 匹配点：{values_matching_points}
- 冲突点：{values_conflict_points}

**性格兼容性**：{personality_compatibility}
- 互补优势：{complementary_advantages}
- 潜在冲突：{potential_conflicts}

**生活方式协调性**：{lifestyle_coordination}
- 协调方面：{coordination_aspects}
- 差异方面：{difference_aspects}

**未来发展契合度**：{future_development_fit}
- 短期协调：{short_term_coordination}
- 长期契合：{long_term_fit}

## 5. 关系发展建议

### 5.1 短期关系建设（1-6个月）
**重点领域**：{short_term_focus_areas}
- 具体行动：{short_term_actions}
- 预期效果：{short_term_expected_effects}
- 时间框架：{short_term_timeframe}

### 5.2 中期关系深化（6-24个月）
**发展策略**：{mid_term_development_strategies}
- 深化重点：{mid_term_deepening_focus}
- 兼容性提升：{mid_term_compatibility_improvement}
- 关系里程碑：{mid_term_relationship_milestones}

### 5.3 长期关系维护（2年以上）
**维护建议**：{long_term_maintenance_suggestions}
- 活力保持：{long_term_vitality_maintenance}
- 兼容性优化：{long_term_compatibility_optimization}
- 持续成长：{long_term_continuous_growth}

## 6. 成长发展计划

### 6.1 性格优化建议
**改进重点**：{personality_improvement_focus}
- 具体措施：{specific_measures}
- 阶段性目标：{phased_goals}
- 预期改善：{expected_improvements}

### 6.2 关系技能提升
**技能重点**：{relationship_skills_focus}
- 培养方法：{training_methods}
- 实践应用：{practical_applications}
- 效果评估：{effectiveness_evaluation}

## 7. 关系洞察总结

### 7.1 前任经验继承
**需要继承的优点**：{strengths_to_inherit}
- 继承方式：{inheritance_methods}
- 预期效果：{inheritance_expected_effects}

**需要避免的问题**：{problems_to_avoid}
- 避免策略：{avoidance_strategies}
- 预防措施：{preventive_measures}

**关键经验教训应用**：{key_lessons_application}
- 教训总结：{lessons_summary}
- 应用方式：{application_methods}

### 7.2 用户需求满足
**必须特质体现**：{must_have_traits_manifestation}
- 满足程度：{satisfaction_level}
- 具体表现：{specific_manifestations}

**希望特质实现**：{nice_to_have_traits_implementation}
- 实现程度：{implementation_level}
- 具体方式：{specific_ways}

**底线特质避免**：{deal_breakers_avoidance}
- 避免保证：{avoidance_guarantee}
- 预防机制：{prevention_mechanisms}

---

**生成说明**：
- 本档案基于用户提供的前任分析、具体要求以及系统分析结果生成
- 档案内容会根据新信息持续更新和优化
- 实际关系发展需要双方共同努力和调整
- 定期回顾和更新档案内容有助于关系健康发展
```

## 生成质量保证

### 1. 内容完整性检查
- [ ] 所有档案部分都生成
- [ ] 各部分内容充实
- [ ] 分析结果都整合

### 2. 逻辑一致性检查
- [ ] 各部分逻辑连贯
- [ ] 没有矛盾信息
- [ ] 分析结果支持档案内容

### 3. 实用性检查
- [ ] 档案内容具体明确
- [ ] 建议切实可行
- [ ] 对用户有实际价值

## 错误处理机制

### 1. 数据缺失处理
```
⚠️ 档案生成数据缺失：
- 缺失的数据部分：[列出]
- 影响的档案内容：[列出]
- 处理方案：[建议]

处理：使用默认值或简化相关部分。
```

### 2. 逻辑矛盾处理
```
⚠️ 档案生成发现逻辑矛盾：
- 矛盾点：[具体描述]
- 可能原因：[分析]
- 处理方案：[建议]

处理：重新分析或调整档案内容。
```

### 3. 生成质量不足
```
⚠️ 档案生成质量不足：
- 质量问题：[描述]
- 可能原因：[分析]
- 改进方案：[建议]

处理：重新生成或人工调整。
```

## 输出格式规范

### 1. 结构要求
- 使用标准档案模板
- 各部分比例均衡
- 标题层级清晰

### 2. 语言要求
- 专业但易懂
- 具体不模糊
- 建设性导向

### 3. 长度要求
- 总体档案：2000-3000字
- 每个主要部分：300-500字
- 每个子部分：100-200字

## 档案更新机制

### 1. 增量更新
- 基于新信息更新相关部分
- 保持档案版本管理
- 记录更新历史

### 2. 定期回顾
- 建议每3-6个月回顾一次
- 根据关系发展调整
- 优化档案内容