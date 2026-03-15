-- Deploy: schemas/agent_db_app_public/tables/messages/columns/to/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/from/column


ALTER TABLE "agent_db_app_public".messages 
  ADD COLUMN "to" text[];

