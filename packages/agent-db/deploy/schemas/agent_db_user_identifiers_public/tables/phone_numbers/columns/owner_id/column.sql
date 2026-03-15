-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/owner_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table


ALTER TABLE agent_db_user_identifiers_public.phone_numbers 
  ADD COLUMN owner_id uuid;

