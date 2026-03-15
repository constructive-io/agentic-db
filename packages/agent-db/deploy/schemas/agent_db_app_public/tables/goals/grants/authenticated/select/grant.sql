-- Deploy: schemas/agent_db_app_public/tables/goals/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/intent_trigger/column


GRANT SELECT ON agent_db_app_public.goals TO authenticated;

