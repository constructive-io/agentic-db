-- Revert: schemas/agent_db_app_public/tables/documents/columns/title/alterations/alt0000001187


ALTER TABLE agent_db_app_public.documents 
  ALTER COLUMN title DROP NOT NULL;


