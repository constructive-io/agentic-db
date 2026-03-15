-- Revert: schemas/agent_db_user_identifiers_public/tables/emails/constraints/emails_pkey/constraint


ALTER TABLE agent_db_user_identifiers_public.emails 
  DROP CONSTRAINT emails_pkey;


