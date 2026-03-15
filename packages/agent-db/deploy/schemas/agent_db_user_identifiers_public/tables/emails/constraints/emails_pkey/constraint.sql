-- Deploy: schemas/agent_db_user_identifiers_public/tables/emails/constraints/emails_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/emails/table


ALTER TABLE agent_db_user_identifiers_public.emails 
  ADD CONSTRAINT emails_pkey PRIMARY KEY (id);

