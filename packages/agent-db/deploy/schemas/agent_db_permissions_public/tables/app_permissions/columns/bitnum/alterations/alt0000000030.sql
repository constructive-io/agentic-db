-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/columns/bitnum/alterations/alt0000000030
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/table
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/columns/bitnum/column


ALTER TABLE agent_db_permissions_public.app_permissions 
  ADD CONSTRAINT app_permissions_bitnum_chk 
    CHECK (bitnum >= 1 AND bitnum <= 24);

