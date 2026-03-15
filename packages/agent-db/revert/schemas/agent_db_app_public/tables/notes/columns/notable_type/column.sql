-- Revert: schemas/agent_db_app_public/tables/notes/columns/notable_type/column


ALTER TABLE "agent_db_app_public".notes 
  DROP COLUMN notable_type RESTRICT;


