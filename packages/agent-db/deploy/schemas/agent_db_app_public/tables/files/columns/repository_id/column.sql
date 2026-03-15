-- Deploy: schemas/agent_db_app_public/tables/files/columns/repository_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/files/columns/updated_at/alterations/alt0000004569


ALTER TABLE "agent_db_app_public".files 
  ADD COLUMN repository_id uuid;

