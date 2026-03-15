-- Revert: schemas/agent_db_app_public/tables/contact_phones/columns/id/column


ALTER TABLE agent_db_app_public.contact_phones 
  DROP COLUMN id RESTRICT;


