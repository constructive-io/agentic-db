-- Deploy: schemas/agent_db_app_public/tables/chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/files/columns/hash/column


GRANT DELETE ON "agent_db_app_public".chunks TO authenticated;

