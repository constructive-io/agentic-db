-- Deploy: schemas/agentic_db_permissions_public/tables/org_permission_defaults/policies/auth_upd/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permission_defaults/table


CREATE POLICY auth_upd ON "agentic_db_permissions_public".org_permission_defaults
FOR UPDATE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agentic_db_memberships_private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND (org_sprt.permissions & '000000000000000010000000') = '000000000000000010000000')
);

