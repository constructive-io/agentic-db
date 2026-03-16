-- Deploy: schemas/agent_db_app_public/tables/milestones/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/search_tsv/column


GRANT SELECT ON "agent_db_app_public".milestones TO authenticated;

