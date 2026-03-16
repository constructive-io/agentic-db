-- Deploy: schemas/agent_db_status_public/tables/app_achievements/constraints/app_achievements_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_achievements/table


ALTER TABLE "agent_db_status_public".app_achievements 
  ADD CONSTRAINT app_achievements_pkey PRIMARY KEY (id);

