-- Revert: schemas/agent_db_app_public/tables/contact_phones/columns/created_at/column


ALTER TABLE agent_db_app_public.contact_phones 
  DROP COLUMN created_at RESTRICT;


