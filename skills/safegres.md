---
name: agent-os-safegres
description: Safegres security patterns for agent-os tables. Authorization policies using Authz* types.
---

# Safegres Security Patterns

Safegres is Constructive's security protocol for expressing authorization as Authz* policy nodes.

## Key Concepts

### Actor
The authenticated user making the request (`current_user_id()`).

### Entity
The scope a membership belongs to (org/group). Referenced via `entity_id` field.

### Membership Types
- `1` = App (global)
- `2` = Org (entity-scoped)
- `3` = Group

### Users ARE Organizations
Every user has a "personal org" — their user ID is also their org ID. This unifies personal and org ownership.

---

## Common Patterns for Agent-OS

### Org-Scoped Tables (Most Common)

For tables where each org sees only their data:

**Policy:** `AuthzEntityMembership`

```typescript
// When provisioning
await sdk.secureTableProvision.create({
  data: {
    databaseId,
    tableName: 'contacts',
    nodeType: 'DataEntityMembership',  // Adds entity_id field
    useRls: true,
    grantRoles: ['authenticated'],
    grantPrivileges: [
      ['select', '*'],
      ['insert', '*'],
      ['update', '*'],
      ['delete', '*'],
    ],
    policyType: 'AuthzEntityMembership',
    policyPermissive: true,
    policyData: {
      entity_field: 'entity_id',
      membership_type: 2,  // Org
    },
  },
  select: { id: true, tableId: true },
});
```

**Use for:** contacts, companies, deals, tasks, memories, expenses — anything org-owned.

### Shared Lookup Tables

For reference data everyone can read:

**Policy:** `AuthzAllowAll` (with caution)

```typescript
policyType: 'AuthzAllowAll',
policyData: {},
```

**Use for:** tags, categories, status types — truly shared reference data.

**⚠️ Warning:** Almost never use `AuthzAllowAll` for user-generated content.

### Direct Owner Tables

For tables owned by exactly one user (not org):

**Policy:** `AuthzDirectOwner`

```typescript
policyType: 'AuthzDirectOwner',
policyData: {
  entity_field: 'owner_id',
},
```

**Use for:** Personal notes, user preferences.

### Published Content

For content that has draft/published states:

**Combine:** `AuthzEntityMembership` (permissive) + `AuthzPublishable` (restrictive)

```typescript
// Policy 1: Org members can access
policyType: 'AuthzEntityMembership',
policyPermissive: true,
policyData: { entity_field: 'entity_id', membership_type: 2 },

// Policy 2: But only if published
policyType: 'AuthzPublishable',
policyPermissive: false,  // Restrictive!
policyData: {},
```

---

## AuthzMembership vs AuthzEntityMembership

**Critical distinction:**

| Policy | Meaning | Binds to Row? |
|--------|---------|---------------|
| `AuthzMembership` | "Actor is a member of *some* scope" | No |
| `AuthzEntityMembership` | "Actor is a member of *this row's* entity" | Yes |

**Rule:** If your table has `entity_id`, you almost always want `AuthzEntityMembership`.

---

## Agent-OS Table Security Summary

| Table | Policy | Scope |
|-------|--------|-------|
| `contacts` | AuthzEntityMembership | Org |
| `companies` | AuthzEntityMembership | Org |
| `deals` | AuthzEntityMembership | Org |
| `events` | AuthzEntityMembership | Org |
| `venues` | AuthzEntityMembership | Org |
| `tasks` | AuthzEntityMembership | Org |
| `memories` | AuthzEntityMembership | Org |
| `rules` | AuthzEntityMembership | Org |
| `skills` | AuthzEntityMembership | Org |
| `expenses` | AuthzEntityMembership | Org |
| `tags` | AuthzAllowAll | Shared |

---

## See Also

- `skills/provision.md` — How to provision tables with security
- Full Safegres docs: `constructive-safegres` skill
