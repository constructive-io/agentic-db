-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/constraints/skill_tools_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/company_memories/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.skill_tools 
  ADD CONSTRAINT skill_tools_pkey PRIMARY KEY (id);

