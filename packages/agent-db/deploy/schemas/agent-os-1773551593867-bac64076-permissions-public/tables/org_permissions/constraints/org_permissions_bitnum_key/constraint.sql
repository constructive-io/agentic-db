-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permissions/constraints/org_permissions_bitnum_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permissions/table


ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".org_permissions 
  ADD CONSTRAINT org_permissions_bitnum_key 
    UNIQUE (bitnum);

