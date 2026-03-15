-- Deploy: schemas/agent_db_permissions_public/tables/org_permissions/columns/bitnum/alterations/alt0000003448
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/table
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/columns/bitnum/column


ALTER TABLE "agent_db_permissions_public".org_permissions 
  ADD CONSTRAINT org_permissions_bitnum_chk 
    CHECK (bitnum >= 1 AND bitnum <= 24);

