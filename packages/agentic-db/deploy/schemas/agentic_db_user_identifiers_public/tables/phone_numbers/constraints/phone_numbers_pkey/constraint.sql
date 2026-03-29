-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/constraints/phone_numbers_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table


ALTER TABLE agentic_db_user_identifiers_public.phone_numbers 
  ADD CONSTRAINT phone_numbers_pkey PRIMARY KEY (id);

