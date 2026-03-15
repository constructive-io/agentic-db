-- Revert: schemas/agent_db_app_public/tables/contact_phones/columns/embedding/column


ALTER TABLE agent_db_app_public.contact_phones 
  DROP COLUMN embedding RESTRICT;


