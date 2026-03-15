-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/columns/bitnum/alterations/alt0000001734
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/table
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/columns/bitnum/column


ALTER TABLE "agent_db_permissions_public".app_permissions 
  ADD CONSTRAINT app_permissions_bitnum_chk 
    CHECK (bitnum >= 1 AND bitnum <= 24);

