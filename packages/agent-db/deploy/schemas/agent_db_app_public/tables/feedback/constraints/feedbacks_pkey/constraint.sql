-- Deploy: schemas/agent_db_app_public/tables/feedback/constraints/feedbacks_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/feedback/table
-- requires: schemas/agent_db_app_public/tables/skill_executions/columns/error/column


ALTER TABLE "agent_db_app_public".feedback 
  ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);

