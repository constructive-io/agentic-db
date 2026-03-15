-- Revert: schemas/agent_db_app_public/tables/ideas/columns/id/alterations/alt0000004692


ALTER TABLE "agent_db_app_public".ideas 
  ALTER COLUMN id DROP NOT NULL;


