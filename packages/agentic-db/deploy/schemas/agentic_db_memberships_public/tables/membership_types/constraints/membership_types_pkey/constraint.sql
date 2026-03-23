-- Deploy: schemas/agentic_db_memberships_public/tables/membership_types/constraints/membership_types_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/table


ALTER TABLE agentic_db_memberships_public.membership_types 
  ADD CONSTRAINT membership_types_pkey PRIMARY KEY (id);

