-- Deploy: schemas/agent_db_app_public/tables/milestones/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/search_tsv/column


GRANT INSERT ON "agent_db_app_public".milestones TO authenticated;

