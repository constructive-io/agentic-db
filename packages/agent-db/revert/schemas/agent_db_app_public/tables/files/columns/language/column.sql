-- Revert: schemas/agent_db_app_public/tables/files/columns/language/column


ALTER TABLE agent_db_app_public.files 
  DROP COLUMN language RESTRICT;


