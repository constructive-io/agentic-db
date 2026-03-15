-- Deploy: schemas/agent_db_app_public/tables/milestones/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/embedding/column


GRANT DELETE ON agent_db_app_public.milestones TO authenticated;

