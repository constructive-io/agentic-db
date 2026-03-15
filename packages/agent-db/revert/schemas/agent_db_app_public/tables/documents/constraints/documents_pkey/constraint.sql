-- Revert: schemas/agent_db_app_public/tables/documents/constraints/documents_pkey/constraint


ALTER TABLE agent_db_app_public.documents 
  DROP CONSTRAINT documents_pkey;


