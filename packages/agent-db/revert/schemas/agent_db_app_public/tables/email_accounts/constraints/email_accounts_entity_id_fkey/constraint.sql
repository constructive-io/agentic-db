-- Revert: schemas/agent_db_app_public/tables/email_accounts/constraints/email_accounts_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.email_accounts 
  DROP CONSTRAINT email_accounts_entity_id_fkey;


