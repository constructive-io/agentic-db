-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/columns/bitnum/alterations/alt0000001591
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/columns/bitnum/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions 
  ADD CONSTRAINT app_permissions_bitnum_chk 
    CHECK (bitnum >= 1 AND bitnum <= 24);

