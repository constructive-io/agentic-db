-- Deploy: schemas/agent_db_app_public/tables/agent_skills/indexes/agent_skills_skill_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_skills/table
-- requires: schemas/agent_db_app_public/tables/agent_skills/columns/skill_id/column
-- requires: schemas/agent_db_app_public/tables/agent_skills/indexes/agent_skills_agent_id_idx


CREATE INDEX agent_skills_skill_id_idx ON agent_db_app_public.agent_skills USING BTREE ( skill_id );

