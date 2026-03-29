-- Deploy: schemas/agentic_db_permissions_public/tables/app_permissions/columns/bitnum/alterations/alt0000002562
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/table
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/columns/bitnum/column


ALTER TABLE agentic_db_permissions_public.app_permissions 
  ADD CONSTRAINT app_permissions_bitnum_chk 
    CHECK (bitnum >= 1 AND bitnum <= 24);

