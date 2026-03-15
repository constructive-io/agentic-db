-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/columns/bitnum/alterations/alt0000001639
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/table
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/app_permissions/columns/bitnum/column


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".app_permissions 
  ADD CONSTRAINT app_permissions_bitnum_chk 
    CHECK (bitnum >= 1 AND bitnum <= 24);

