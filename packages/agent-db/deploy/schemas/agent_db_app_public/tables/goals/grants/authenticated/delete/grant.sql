-- Deploy: schemas/agent_db_app_public/tables/goals/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/intent_trigger/column


GRANT DELETE ON "agent_db_app_public".goals TO authenticated;

