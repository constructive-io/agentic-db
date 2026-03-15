-- Deploy: schemas/agent_db_app_public/tables/memories/columns/verified/alterations/alt0000004289
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/verified/column
-- requires: schemas/agent_db_app_public/tables/memories/columns/importance/column



ALTER TABLE "agent_db_app_public".memories 
    ALTER COLUMN verified SET DEFAULT false;

