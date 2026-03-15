-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/columns/bitnum/alterations/alt0000000278
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/columns/bitnum/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".org_permissions 
  ADD CONSTRAINT org_permissions_bitnum_chk 
    CHECK (bitnum >= 1 AND bitnum <= 24);

