-- Deploy: schemas/agentic_db_permissions_public/tables/org_permissions/constraints/org_permissions_bitnum_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/table


ALTER TABLE agentic_db_permissions_public.org_permissions 
  ADD CONSTRAINT org_permissions_bitnum_key 
    UNIQUE (bitnum);

