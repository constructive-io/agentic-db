-- Revert: schemas/agent_db_user_identifiers_public/tables/emails/columns/owner_id/column


ALTER TABLE agent_db_user_identifiers_public.emails 
  DROP COLUMN owner_id RESTRICT;


