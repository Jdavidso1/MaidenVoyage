using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using NicCage.Data;
using NicCage.Models;

namespace NicCage.Controllers
{
    public class AddCrazyController : Controller
    {
        private readonly NicCageContext _context;

        public AddCrazyController(NicCageContext context)
        {
            _context = context;
        }

        // GET: AddCrazy
        public async Task<IActionResult> Index()
        {
            return View(await _context.NicCageRole.ToListAsync());
        }

        // GET: AddCrazy/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var nicCageRole = await _context.NicCageRole
                .FirstOrDefaultAsync(m => m.Id == id);
            if (nicCageRole == null)
            {
                return NotFound();
            }

            return View(nicCageRole);
        }

        // GET: AddCrazy/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: AddCrazy/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,CharacterName,MovieTitle,IsHeWeird,Rating,Picture")] NicCageRole nicCageRole)
        {
            if (ModelState.IsValid)
            {
                _context.Add(nicCageRole);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(nicCageRole);
        }

        // GET: AddCrazy/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var nicCageRole = await _context.NicCageRole.FindAsync(id);
            if (nicCageRole == null)
            {
                return NotFound();
            }
            return View(nicCageRole);
        }

        // POST: AddCrazy/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,CharacterName,MovieTitle,IsHeWeird,Rating,Picture")] NicCageRole nicCageRole)
        {
            if (id != nicCageRole.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(nicCageRole);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!NicCageRoleExists(nicCageRole.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(nicCageRole);
        }

        // GET: AddCrazy/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var nicCageRole = await _context.NicCageRole
                .FirstOrDefaultAsync(m => m.Id == id);
            if (nicCageRole == null)
            {
                return NotFound();
            }

            return View(nicCageRole);
        }

        // POST: AddCrazy/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var nicCageRole = await _context.NicCageRole.FindAsync(id);
            _context.NicCageRole.Remove(nicCageRole);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool NicCageRoleExists(int id)
        {
            return _context.NicCageRole.Any(e => e.Id == id);
        }
    }
}
